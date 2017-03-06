run(`npm install git+https://github.com/izaid/j2.git`)
cp(joinpath(dirname(@__FILE__), "node_modules/j2/build/Release/v8.a"), joinpath(dirname(@__FILE__), "usr/lib/"); remove_destination=true)

#cd("j2")
#mkdir("build")
#cd("build")

#path =  joinpath(dirname(@__FILE__), "usr")

#run(`cmake -DCMAKE_INSTALL_PREFIX=$path ..`)
#run(`make install`)
