if (ispath("include"))
    rm("include"; recursive=true)
end
mkdir("include")

download("https://raw.github.com/izaid/j2/master/include/j2.h", "include/j2.h")

if (ispath("src/j2.cpp"))
    rm("src/j2.cpp"; recursive=true)
end
download("https://raw.github.com/izaid/j2/master/src/j2.cpp", "src/j2.cpp")

if (ispath("build"))
    rm("build"; recursive=true)
end
mkdir("build")

cd("build")

run(`cmake -DCMAKE_INSTALL_PREFIX=../usr ..`)
run(`make install`)
