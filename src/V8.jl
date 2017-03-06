module V8
    export js, @js_str

    function __init__()
        ccall((:jl_v8_init, "/Users/irwin/.julia/v0.5/V8/deps/usr/lib/libj2.dylib"), Void, (Cstring,), dirname(dirname(@__FILE__)))
    end

    function js(src)
        ccall((:jl_v8_eval, "/Users/irwin/.julia/v0.5/V8/deps/usr/lib/libj2.dylib"), Any, (Cstring,), src)
    end

    macro js_str(src)
        js(src)
    end
end
