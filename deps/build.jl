cd("j2")
#mkdir("build")
cd("build")

path =  joinpath(dirname(@__FILE__), "usr")

run(`cmake -DCMAKE_INSTALL_PREFIX=$path ..`)
run(`make install`)
