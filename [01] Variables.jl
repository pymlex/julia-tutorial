using Printf
using Statistics

# Dynamic typing
s = 0
s = "Hello world"
println(s)

# Type Declaration
a::Float32 = 1.0
b::UInt16 = 2
c = a + b
println("Sum $c")

# Floating point precision
a1 = 0.1
a2 = 0.1
a3 = 0.1
as = a1 + a2 + a3
println("Sum a1 + a2 + a3 = $as")

# Type Conversion
println(Char(100))
println(Int(trunc(3.14))) # Truncate the decimal part
println(parse(Int128, "123")) # Parse the string as an Int128

# Type Inference
x = 10
println(typeof(x))

# Symbols
println(pi)
println(:pi)
println(Float64(pi))