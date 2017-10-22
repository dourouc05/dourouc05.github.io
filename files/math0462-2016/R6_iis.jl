using JuMP
using Gurobi

# An infeasible model. 
m = Model(solver=GurobiSolver())
@variable(m, x, Bin)
@variable(m, y, Bin)
@variable(m, z >= 0)
@constraint(m, z <= 5 * x + 8 * y)
@objective(m, Min, z - y)
@constraint(m, x == 1 - y)
@constraint(m, x + y == 2)
solve(m)

# Detect infeasibility by directly interacting with Gurobi. 
grb = getrawsolver(m)
Gurobi.computeIIS(grb)
for i in 1:3
  println("Constraint " * string(i) * " in IIS? " * string(Gurobi.get_intattrelement(grb, "IISConstr", i)))
end
