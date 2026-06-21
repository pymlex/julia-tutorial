using Printf
using Statistics

# Tuples
println("\nTuples:")
a = (1, 2, 3)
for i in a
    println(i)
end

b = ((1, 2), 3)
println(b[1][2])

c = (alice = ('A', 100), bob = ('B', 200))
println(c.alice[1])

# Sets
println("\nSets:")
s = Set([1, 2, 3, 4, 5])
println(s)
push!(s, 6)
println(in(6, s))

t = Set([1, 2, 10, 11, 12])
println(union(s, t))
println(intersect(s, t))
println(setdiff(s, t))


# Dictionaries
println("\nDictionaries:")
d = Dict("apple" => 1, "banana" => 2, "cherry" => 3)
println(d["apple"])

d["cherry"] = 4
delete!(d, "banana")
println(haskey(d, "cherry"))
println(d)

println(keys(d))
println(values(d))

for kv in d
    println(kv)
end

for (k, v) in d
    println("$k => $v")
end