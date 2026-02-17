using ToyProject
using Test

@testset "ToyProject.jl" begin
    # Write your tests here.

@test angle([1.0, 0.0], [0.0, 1.0]) ≈ π/2
@test angle([1.0, 0.0], [1.0, 0.0]) ≈ 0.0
   
end
