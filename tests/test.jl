using Base.Test

using V8

@test true === js"true"
@test false === js"false"

@test 0.5 === js"0.5"
@test 1.0 === js"1.0"
@test 1.5 === js"1.5"

@test "Hello, world!" == js"\"Hello, world!\""
@test "Hello, world!" != js"\"Hello, wo\""
