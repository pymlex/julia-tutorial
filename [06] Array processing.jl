using Printf
using Statistics

f = Int64[1, 2, 3, 4, 5, 3, 4, 5, 6]
println(f)

g = rand(3, 3)
println(g)

# Slicing arrays
println("\nSlicing arrays:")
println(g[:, 1])

# Array searching
println("\nSearching for 3 in f:")
println(3 in f)
println(count(isequal(3), f))
println(findall(isequal(3), f))

# Array statistics
println("\nArray statistics for g:")
println(size(g))
println(length(g))
println(sum(g))
println(mean(g))
println(std(g))
println(var(g))
println(median(g))
println(minimum(g))
println(maximum(g))

# Splicing arrays
println("\nSplicing arrays:")
println(g[1:2, 1:2])
println(g[1:2, :])
println(g[:, 1:2])

# Vectorized operations
g_std = (g .- mean(g)) / std(g)
println("g_std:\n$g_std")

# Array concatenation
println("\nArray concatenation:")
println(vcat(g, g))
println(hcat(g, g))

# Pushing arrays
println("\nPushing arrays:")
s = collect(1:2:10)
println("s:\n$s")
push!(s, 11)
println("s after pushing 11:\n$s")