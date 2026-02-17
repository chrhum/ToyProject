using ToyProject

println("=== Dev Playground ===")

try
    u = [1.0, 0.0]
    v = [0.0, 1.0]

    println("u = ", u)
    println("v = ", v)

    println("angle(u, v) = ", angle(u, v))

catch e
    println("Error occurred:")
    println(e)
end
