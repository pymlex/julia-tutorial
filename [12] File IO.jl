using Printf
using Statistics

# Write to a file
println("\nWrite to a file:")
open("data.txt", "w") do file
    write(file, "Hello, world!")
end

data = (
    open("data.txt", "r") do file
        read(file, String)
    end
)

println(data)

data = read("data.txt", String)
println(data)

# Read lines from a file
println("\nRead lines from a file:")
mlf = readlines("multiline_file.txt")
println(length(mlf))
println(mlf[1])