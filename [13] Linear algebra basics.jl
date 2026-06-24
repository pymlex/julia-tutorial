using Printf
using LinearAlgebra


println("\nVectors and matrices:")

v = [1.0, 2.0, 3.0]
w = [4.0, 5.0, 6.0]
println("v = ", v)
println("w = ", w)

println("dot(v, w) = ", dot(v, w))
println("norm(v) = ", norm(v))

A = [1.0 2.0 1.0;
     4.0 5.0 7.0;
     3.0 6.0 8.0]
println("A =")
println(A)

println("size(A) = ", size(A))
println("eltype(A) = ", eltype(A))

println("transpose(A) =")
println(transpose(A))
println(A') # Equivalent to transpose(A)

println("inv(A) =")
println(inv(A))

println("det(A) = ", det(A))
println("rank(A) = ", rank(A))
println("trace(A) = ", trace(A))
println("norm(A) = ", norm(A))
println("cond(A) = ", cond(A)) # Condition number - how close A is to being singular
println("eigvals(A) = ", eigvals(A))
println("eigvecs(A) = ", eigvecs(A))

B = [1.0 0.0; 0.0 1.0; 1.0 1.0]
println("B =")
println(B)

println("A * B =")
println(A * B)

x = [1.0, 2.0, 3.0]
println("A * x =")
println(A * x)

println("Elementwise squares:")
println(v .^ 2)
println("A .* 2.0 =")
println(A .* 2.0)