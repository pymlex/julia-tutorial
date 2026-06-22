using Printf
using Statistics

# Enums
println("\nEnums:")
@enum Fruit begin
    Apple = 1
    Banana = 2
    Orange = 3
end

println(Fruit(2))
println(Banana::Fruit)

# Structs
struct Worker
    name::String
    id::Int
end

# Constructor
println("\nStructs:")
worker = Worker("John Doe", 123)
println(worker.name)

# Abstract Types
println("\nAbstract Types:")
abstract type Animal end
struct Dog <: Animal
    name::String
    bark::String
end

struct Cat <: Animal
    name::String
    meow::String
end

println(Dog("Buddy", "Woof"))
println(Cat("Whiskers", "Meow"))
