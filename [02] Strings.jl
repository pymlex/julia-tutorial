using Printf
using Statistics

# Indexing strings
s = "Hello World\n"
println(length(s))
println(s[1])
println(s[2:4])
println(s[end])

# String concatenation
s1 = string("Hello", "World")
println(s1)
println("Hello" * "World")

# Formatting strings
a = 1
b = 2
println("a = $a, b = $b, a + b = $(a + b)")

# Multiline strings
s = """
What is 
love?
"""
println(s)

# String comparison
println("la" > "le")

# Seaching substrings
joe = "Who is Joe?"
println(findfirst("Joe", joe))
println(occursin("Joe", joe))