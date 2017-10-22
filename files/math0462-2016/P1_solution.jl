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
  
  @variable(m, number[buildings] >= 0, Int)
  @objective(m, Min, number[:fisherman])
  @constraint(m, number[:fisherman] * production[:fisherman, :fish] >= consumption[:peasant, :fish] * n_peasants / 100)
  
  solve(m)
  return getvalue(number[:fisherman]) # 3.0
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

  static = false
  if static
    @variable(m, number[buildings] >= 0, Int)
    @objective(m, Min, sum(number))
    @constraint(m, number[:fisherman] * production[:fisherman, :fish] >= consumption[:peasant, :fish] * n_peasants / 100 + consumption[:citizen, :fish] * n_citizens / 100)
    @constraint(m, number[:weaver] * production[:weaver, :linen] >= consumption[:citizen, :linen] * n_citizens / 100)
    @constraint(m, number[:hempplantation] * production[:hempplantation, :hemp] >= consumption[:weaver, :hemp] * (number[:weaver] * production[:weaver, :linen]))
    
    solve(m)
    # return getvalue(number)
    # [     fisherman] = 12.0
    # [        weaver] = 2.0
    # [hempplantation] = 4.0
    return (getvalue(number[:fisherman]), getvalue(number[:hempplantation]), getvalue(number[:weaver]))
  else
    T = 50
  
    @variable(m, number[buildings] >= 0, Int)
    @variable(m, input[transform_buildings, 1:T] >= 0)
    @variable(m, output[transform_buildings, 1:T] >= 0)
    @variable(m, stock[goods, 1:T] >= 0)
    
    @objective(m, Min, sum(number))
    
    # Initial storage. 
    @constraint(m, stock[:fish, 1] == 20.)
    @constraint(m, stock[:hemp, 1] == 0.)
    @constraint(m, stock[:linen, 1] == 20.)
    
    # No transformation can occur at the first time step (no raw materials). 
    @constraint(m, input[:weaver, 1] == 0.)
    @constraint(m, output[:weaver, 1] == 0.)
    
    for t in 2:T
      # Fish stock. 
      @constraint(m, stock[:fish, t] == stock[:fish, t-1] + number[:fisherman] * production[:fisherman, :fish] - consumption[:peasant, :fish] * n_peasants / 100 - consumption[:citizen, :fish] * n_citizens / 100)

      # Hemp stock. 
      @constraint(m, stock[:hemp, t] == stock[:hemp, t-1] + number[:hempplantation] * production[:hempplantation, :hemp] - input[:weaver, t-1])
      
      # Linen garments stock. 
      @constraint(m, stock[:linen, t] == stock[:linen, t-1] + output[:weaver, t-1] - consumption[:citizen, :linen] * n_citizens / 100)
      
      # Link input, output, and number of transformation buildings. 
      @constraint(m, consumption[:weaver, :hemp] * input[:weaver, t-1] == output[:weaver, t])
      @constraint(m, number[:weaver] * production[:weaver, :linen] >= output[:weaver, t])
    end
    
    solve(m)
    # return getvalue(number)
    # [     fisherman] = 12.0
    # [        weaver] = 2.0
    # [hempplantation] = 4.0
    return (getvalue(number[:fisherman]), getvalue(number[:hempplantation]), getvalue(number[:weaver]))
  end
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
  
  T = 50
  
  @variable(m, number[buildings] >= 0, Int)
  @variable(m, input[transform_buildings, 1:T] >= 0)
  @variable(m, output[transform_buildings, 1:T] >= 0)
  @variable(m, stock[goods, 1:T] >= 0)
  
  @variable(m, stock_secondary[[:wheat], 1:T] >= 0)
  @variable(m, ship[1:n_boats, 1:T], Bin)
  @variable(m, shipLoaded[1:n_boats, 1:T] >= 0)
  
  @objective(m, Min, sum(number))
  
  # Initial storage. 
  @constraint(m, stock[:fish, 1] == 20.)
  @constraint(m, stock[:hemp, 1] == 0.)
  @constraint(m, stock[:wheat, 1] == 0.)
  @constraint(m, stock[:linen, 1] == 20.)
  @constraint(m, stock[:beer, 1] == 20.)
  
  @constraint(m, stock_secondary[:wheat, 1] == 0.)
  
  # No transformation can occur at the first time step (no raw materials). 
  @constraint(m, input[:weaver, 1] == 0.)
  @constraint(m, output[:weaver, 1] == 0.)
  @constraint(m, input[:brewery, 1] == 0.)
  @constraint(m, output[:brewery, 1] == 0.)
  
  for t in 2:T
    ## First island. 
    # Fish stock. 
    @constraint(m, stock[:fish, t] == stock[:fish, t-1] + number[:fisherman] * production[:fisherman, :fish] - consumption[:peasant, :fish] * n_peasants / 100 - consumption[:citizen, :fish] * n_citizens / 100 - consumption[:patrician, :fish] * n_patricians / 100)
  
    # Hemp stock. 
    @constraint(m, stock[:hemp, t] == stock[:hemp, t-1] + number[:hempplantation] * production[:hempplantation, :hemp] - input[:weaver, t-1])
  
    # Wheat stock. 
    if t - 4 >= 1
      @constraint(m, stock[:wheat, t] == stock[:wheat, t-1] + sum(shipLoaded[:, t-4]) - input[:brewery, t-1]) # - input[:mill, t-1]) 
    else 
      @constraint(m, stock[:wheat, t] == stock[:wheat, t-1] - input[:brewery, t-1]) # - input[:mill, t-1]) 
    end
    
    # Linen garments stock. 
    @constraint(m, stock[:linen, t] == stock[:linen, t-1] + output[:weaver, t-1] - consumption[:citizen, :linen] * n_citizens / 100 - consumption[:patrician, :linen] * n_patricians / 100)
    
    # Beer stock. 
    @constraint(m, stock[:beer, t] == stock[:beer, t-1] + output[:brewery, t-1] - consumption[:patrician, :beer] * n_patricians / 100)
    
    # Link input, output, and number of transformation buildings. 
    @constraint(m, consumption[:weaver, :hemp] * input[:weaver, t-1] == output[:weaver, t])
    @constraint(m, consumption[:brewery, :wheat] * input[:brewery, t-1] == output[:brewery, t])
    
    @constraint(m, number[:weaver] * production[:weaver, :linen] >= output[:weaver, t])
    @constraint(m, number[:brewery] * production[:brewery, :beer] >= output[:brewery, t])
    
    ## Second island. 
    # Wheat stock. 
    @constraint(m, stock_secondary[:wheat, t] == stock_secondary[:wheat, t-1] + number[:cropfarm] * production[:cropfarm, :wheat] - sum(shipLoaded[:, t-1])) 
    
    for s in 1:n_boats
      # A boat round trip takes 6 minutes. 
      for tau in 1:(boat_time[:secondary, :main] + boat_time[:main, :secondary] - 1)
        if t + tau <= T
          @constraint(m, ship[s, t + tau] <= 1 - ship[s, t])
        end
      end
      
      # Load only when starting. Max load. 
      @constraint(m, shipLoaded[s, t] <= boat_capacity_max * ship[s, t])
    end
  end
  
  solve(m)
  # return getvalue(number)
  # [     fisherman] = 8.0
  # [hempplantation] = 10.0
  # [      cropfarm] = 1.0
  # [        weaver] = 5.0
  # [       brewery] = 1.0
  return (getvalue(number[:fisherman]), getvalue(number[:hempplantation]), getvalue(number[:cropfarm]), getvalue(number[:weaver]), getvalue(number[:brewery]))
end

function Q4(m)
  buildings = [:fisherman, :hempplantation, :cropfarm, :weaver, :brewery] 
  transform_buildings = [:weaver, :brewery] 
  goods = [:fish, :hemp, :wheat, :linen, :beer] 
  inhabitants = [:peasant, :citizen, :patrician]
  islands = [:main, :secondary]
  n_boats = 2
  
  T = length(price[:fish])
  
  @variable(m, number[buildings] >= 0, Int)
  @variable(m, input[transform_buildings, 1:T] >= 0)
  @variable(m, output[transform_buildings, 1:T] >= 0)
  @variable(m, stock[goods, 1:T] >= 0)
  @variable(m, sold[goods, 1:(T - 1)] >= 0)
  
  @variable(m, n_peasants >= 0, Int)
  @variable(m, n_citizens >= 0, Int)
  @variable(m, n_patricians >= 0, Int)
  
  @variable(m, stock_secondary[[:wheat], 1:T] >= 0)
  @variable(m, ship[1:n_boats, 1:T], Bin)
  @variable(m, shipLoaded[1:n_boats, 1:T] >= 0)
  
  @objective(m, Max, T * tax[:peasant] * n_peasants + T * tax[:citizen] * n_citizens + T * tax[:patrician] * n_patricians + sum{dot(price[g][1:(T-1)], vec(sold[g, :])), g in goods} - T * sum{number[b] * maintenance[b], b in buildings})
  
  # Initial storage. 
  @constraint(m, stock[:fish, 1] == 20.)
  @constraint(m, stock[:hemp, 1] == 0.)
  @constraint(m, stock[:wheat, 1] == 0.)
  @constraint(m, stock[:linen, 1] == 20.)
  @constraint(m, stock[:beer, 1] == 20.)
  
  @constraint(m, stock_secondary[:wheat, 1] == 0.)
  
  # Population constraints. 
  @constraint(m, n_peasants + n_citizens + n_patricians <= population_max)
  @constraint(m, n_citizens + n_patricians <= proportion_max[:citizen] * (n_peasants + n_citizens + n_patricians))
  @constraint(m, n_patricians <= proportion_max[:patrician] * (n_peasants + n_citizens + n_patricians))
  
  # Merchant constraints. 
  for t in 1:(T - 1)
    @constraint(m, sum{sold[g, t], g in goods} <= boat_capacity_max)
  end
  
  # Space constraints. 
  @constraint(m, number[:fisherman] * space_use[:coast, :fisherman] <= coast_space_max[:main])
  @constraint(m, number[:hempplantation] * space_use[:land, :hempplantation] + number[:weaver] * space_use[:land, :weaver] + number[:brewery] * space_use[:land, :brewery] <= land_space_max[:main]) # number[:mill] * space_use[:land, :mill] + number[:brewery] * space_use[:land, :brewery] + number[:bakery] * space_use[:land, :bakery]
  @constraint(m, number[:cropfarm] * space_use[:land, :cropfarm] <= land_space_max[:secondary])
  
  # No transformation can occur at the first time step (no raw materials). 
  @constraint(m, input[:weaver, 1] == 0.)
  @constraint(m, output[:weaver, 1] == 0.)
  @constraint(m, input[:brewery, 1] == 0.)
  @constraint(m, output[:brewery, 1] == 0.)
  
  for t in 2:T
    ## First island. 
    # Fish stock. 
    @constraint(m, stock[:fish, t] == stock[:fish, t-1] + number[:fisherman] * production[:fisherman, :fish] - consumption[:peasant, :fish] * n_peasants / 100 - consumption[:citizen, :fish] * n_citizens / 100 - consumption[:patrician, :fish] * n_patricians / 100 - sold[:fish, t - 1])
  
    # Hemp stock. 
    @constraint(m, stock[:hemp, t] == stock[:hemp, t-1] + number[:hempplantation] * production[:hempplantation, :hemp] - input[:weaver, t-1] - sold[:hemp, t - 1])
  
    # Wheat stock. 
    if t - 4 >= 1
      @constraint(m, stock[:wheat, t] == stock[:wheat, t-1] + sum(shipLoaded[:, t-4]) - input[:brewery, t-1] - sold[:wheat, t - 1]) # - input[:mill, t-1]) 
    else 
      @constraint(m, stock[:wheat, t] == stock[:wheat, t-1] - input[:brewery, t-1] - sold[:wheat, t - 1]) # - input[:mill, t-1]) 
    end
    
    # Linen garments stock. 
    @constraint(m, stock[:linen, t] == stock[:linen, t-1] + output[:weaver, t-1] - consumption[:citizen, :linen] * n_citizens / 100 - consumption[:patrician, :linen] * n_patricians / 100 - sold[:linen, t - 1])
    
    # Beer stock. 
    @constraint(m, stock[:beer, t] == stock[:beer, t-1] + output[:brewery, t-1] - consumption[:patrician, :beer] * n_patricians / 100 - sold[:beer, t - 1])
    
    # Link input, output, and number of transformation buildings. 
    @constraint(m, consumption[:weaver, :hemp] * input[:weaver, t-1] == output[:weaver, t])
    @constraint(m, consumption[:brewery, :wheat] * input[:brewery, t-1] == output[:brewery, t])
    
    @constraint(m, number[:weaver] * production[:weaver, :linen] >= output[:weaver, t])
    @constraint(m, number[:brewery] * production[:brewery, :beer] >= output[:brewery, t])
    
    ## Second island. 
    # Wheat stock. 
    @constraint(m, stock_secondary[:wheat, t] == stock_secondary[:wheat, t-1] + number[:cropfarm] * production[:cropfarm, :wheat] - sum(shipLoaded[:, t-1])) 
    
    for s in 1:n_boats
      # A boat round trip takes 6 minutes. 
      for tau in 1:(round(Int, boat_time[:secondary, :main]) + round(Int, boat_time[:main, :secondary]) - 1)
        if t + tau <= T
          @constraint(m, ship[s, t + tau] <= 1 - ship[s, t])
        end
      end
      
      # Load only when starting. Max load. 
      @constraint(m, shipLoaded[s, t] <= boat_capacity_max * ship[s, t])
    end
  end
  
  solve(m)
  #return [getvalue(number), getvalue(n_peasants), getvalue(n_citizens), getvalue(n_patricians)]
  # [     fisherman] = 50.0
  # [hempplantation] = 25.0
  # [      cropfarm] = 24.0
  # [        weaver] = 13.0
  # [       brewery] = 12.0
  #  -0.0                                                                                                                
  #  -0.0                                                                                                                
  #  -0.0
  return (getvalue(number[:fisherman]), getvalue(number[:hempplantation]), getvalue(number[:cropfarm]), getvalue(number[:weaver]), getvalue(number[:brewery]), getvalue(n_peasants), getvalue(n_citizens), getvalue(n_patricians))
end