cmake_minimum_required(VERSION 2.6)
project(libembedded)

set (CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})

find_package(Julia)

find_library(
	V8_LIBRARY
	NAMES v8
)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Werror -Wno-unused -std=gnu99 -fPIC -Wno-format-security")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -Wno-deprecated-declarations -std=c++14")
set(CMAKE_VERBOSE_MAKEFILE true)

include_directories(
    include
    deps
${Julia_INCLUDE_DIRS}
)

set(libembedded_SRC
    src/embedded.cpp
    src/j2.cpp
)

add_definitions(-DJULIA_ENABLE_THREADING=1)

add_library(embedded SHARED ${libembedded_SRC})
target_link_libraries(embedded ${Julia_LIBRARY} v8 v8_libbase v8_libplatform)

install(TARGETS embedded LIBRARY DESTINATION lib)
