using JuMP

include("P1_data.jl")

function Q1(m)
  buildings = [:fisherman]
  transform_buildings = []
  goods = [:fish]
  inhabitants = [:peasant]
  islands = [:main]
  n_boats = 0
  n_peasants = 500
  n_citizens = 0
  n_patricians = 0
  
  # Write your model here: 
  # @variable(m, number_fisherman >= 0, Int)
  # @constraint(m, …)
  # @objective(m, …, …)
  
  solve(m)
  
  n_fisherman = -1 # For example: getvalue(number_fisherman)
  return n_fisherman
end

function Q2(m)
  buildings = [:fisherman, :hempplantation, :weaver]
  transform_buildings = [:weaver]
  goods = [:fish, :hemp, :linen]
  inhabitants = [:peasant, :citizen]
  islands = [:main]
  n_boats = 0
  n_peasants = 2000
  n_citizens = 800
  n_patricians = 0

  # Write your model here. 
  
  solve(m)
  
  n_fisherman = -1 
  n_hempplantation = -1 
  n_weaver = -1 
  return (n_fisherman, n_hempplantation, n_weaver)
end

function Q3(m)
  buildings = [:fisherman, :hempplantation, :cropfarm, :weaver, :brewery] 
  transform_buildings = [:weaver, :brewery] 
  goods = [:fish, :hemp, :wheat, :linen, :beer] 
  inhabitants = [:peasant, :citizen, :patrician]
  islands = [:main, :secondary]
  n_boats = 2
  n_peasants = 500
  n_citizens = 2000
  n_patricians = 800

  # Write your model here. 
  
  solve(m)
  
  n_fisherman = -1 
  n_hempplantation = -1 
  n_cropfarm = -1 
  n_weaver = -1 
  n_brewery = -1 
  return (n_fisherman, n_hempplantation, n_cropfarm, n_weaver, n_brewery)
end

function Q4(m)
  buildings = [:fisherman, :hempplantation, :cropfarm, :weaver, :brewery] 
  transform_buildings = [:weaver, :brewery] 
  goods = [:fish, :hemp, :wheat, :linen, :beer] 
  inhabitants = [:peasant, :citizen, :patrician]
  islands = [:main, :secondary]
  n_boats = 2

  # Write your model here. 
  
  solve(m)
  
  n_fisherman = -1 
  n_hempplantation = -1 
  n_cropfarm = -1 
  n_weaver = -1 
  n_brewery = -1 
  n_peasants = -1
  n_citizens = -1
  n_patricians = -1 
  return (n_fisherman, n_hempplantation, n_cropfarm, n_weaver, n_brewery, n_peasants, n_citizens, n_patricians)
end