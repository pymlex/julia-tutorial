using LinearAlgebra
using Printf

A = reshape(collect(1:12), 3, 4)
println("A =")
println(A)

x = reshape(collect(1:6), 2, 3)
println("x =")
println(x)

v = vec(x)
println("vec(x) = ", v)

# Creates a direct view into the matrix A, 
# but does not copy the data.
S = @view A[2:3, 1:2]
println("view A[2:3, 1:2] =")
println(S)

S[1, 1] = 100
println("A after changing the view:")
println(A)
