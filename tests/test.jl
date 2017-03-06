using Base.Test

using V8

@test true === js"true"
@test false === js"false"

@test 0.5 === js"0.5"
