using Printf
using Statistics

# Zero division with try-catch
println("\nZero division with try-catch:")
try 
    x = Int(0)
    y = 1 / x
    if y == Inf
        println("Zero division")
    else
        println(y)
    end
catch e
    println("Error: $e")
end

# Assertions
a = 1 + 1
@assert(a == 2)