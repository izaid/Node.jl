run(`npm install git+https://github.com/izaid/j2.git`)

if ispath("usr")
    rm("usr"; recursive=true)
end
mkpath("usr/lib")

cp("node_modules/j2/build/Release/v8.a", "usr/lib/v8.a")
