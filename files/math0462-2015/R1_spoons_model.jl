include("./R1_spoons.jl");

using JuMP
using Gurobi

# First: minimise costs. 
m = Model(solver=GurobiSolver())

@defVar(m, production[1:timesteps] >= 0, Int)
@defVar(m, stored[1:timesteps] >= 0, Int)
@defVar(m, on[1:timesteps], Bin)

@setObjective(m, Min, dot(variable, production) + dot(fixed, on) + dot(storage, stored))
@addConstraint(m, stored[1] == 0)
for t in 1:(timesteps - 1)
    @addConstraint(m, stored[t + 1] == stored[t] + production[t] - demand[t]) 
end
M = sum(demand)
for t in 1:timesteps
    @addConstraint(m, production[t] <= M * on[t]) 
end

#print(m)
#solve(m)

# Then add more constraints. 
@defVar(m, start[1:timesteps], Bin)

for t in 1:(timesteps - 4)
    @addConstraint(m, sum(on[t:t+4]) <= 4)
end
@addConstraint(m, start[1] == on[1])
for t in 2:timesteps
    @addConstraint(m, start[t] <= 1 - on[t - 1])
    @addConstraint(m, start[t] <= on[t])
    @addConstraint(m, start[t] >= on[t] - on[t - 1] - 1)
end
for t in 1:timesteps
    @addConstraint(m, on[t] >= start[t])
end
for t in 1:(timesteps - 1)
    @addConstraint(m, on[t + 1] >= start[t])
end
for t in 1:(timesteps - 2)
    @addConstraint(m, on[t + 2] >= start[t])
end

# Replace the three previous loops: 
#for t in 1:(timesteps - 3)
#    @addConstraint(m, sum(on[t:t+2]) >= 3 * start[t])
#end

#print(m)
#solve(m)