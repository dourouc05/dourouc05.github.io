using JuMP
using Gurobi

include("./P1_data.jl")
include("./P1_solution.jl") # Change this to fit your code.

s = lorry5(ds(), Model(solver=GurobiSolver()))
