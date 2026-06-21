using Printf
using Statistics

println("\nFunctions:")

# One-line function
println("\nOne-line function:")
f(x) = x^2
x = 10
@printf("%d squared is %d\n", x, f(x))

# Function with default argument
println("\nDefault argument:")
function g(x=10)
    if x  > 10
        return string(x) * " is greater than 10"
    else
        return string(x) * " is less than 10"
    end
end
println(g(100))

# Function with global variable
println("\nGlobal variable:")
C = 100
function update()
    global C += 1
    return C
end
println(update())

# Function with variable arguments
println("\nVariable arguments:")
function variable_args(args...)
    return sum(args)
end
println(variable_args(1, 2, 3, 4, 5))

# Function with keyword arguments
println("\nKeyword arguments:")
function keyword_args(;kwargs...)
    return kwargs
end
println(keyword_args(a=1, b=2, c=3))

# Anonymous function
println("\nAnonymous function:")
z = x -> x^2
println(z(10))

# Function with multiple return values
println("\nMultiple return values:")
function alot(x, y)
    return x + y, x - y
end
a, b = alot(10, 5)
println(a, " and ", b)

# Function with nested function
println("\nNested function:")
function wrapper(mul)
    return (
        function(x) 
            return mul * x
        end
    )
end
w = wrapper(10)
println(w(10))

# Function overloading
println("\nFunction overloading:")
function sumit(x::Number, y::Number)
    return x + y
end

function sumit(x::String, y::String)
    return parse(Int, x) + parse(Int, y)
end
println(sumit(10, 20))
println(sumit("10", "20"))

# Fibonacci sequence
println("\nFibonacci sequence:")
function fibonacci(n)
    if n <= 0
        return 0
    elseif n == 1
        return 1
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end
println(fibonacci(10))