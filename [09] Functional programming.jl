using Printf
using Statistics

sq = map(x -> x^2, [1, 2, 3, 4, 5])
println(sq)

su = map((x, y) -> x + y, [1, 2, 3], [9, 7, 8])
println(su)

mu = reduce((x, y) -> x * y, [1, 2, 3, 4, 5])
println(mu)

fi = filter(x -> x > 3, [1, 2, 3, 4, 5])
println(fi)

# Longest word search
sentence = "Who knows? Not me."
words = split(sentence)
longest = reduce((x, y) -> length(x) > length(y) ? x : y, words)
println(longest)

# Input handling
input_str = chomp(readline())
numbers = parse.(Int, split(input_str)) 
println(numbers)