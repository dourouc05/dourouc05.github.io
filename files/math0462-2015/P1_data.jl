type LorryData
  # General data. 
  max_team_size::Int

  # Lorry data (indexed with lorries).
  lorries::Int
  max_weight::Array{Float64, 1}
  max_length::Array{Float64, 1}
  refrigerable::Array{Bool, 1}
  fixed_cost::Array{Float64, 1}
  variable_cost::Array{Float64, 1}
  refrigeration_cost::Array{Float64, 1}
  
  # Object data (indexed with objects).
  objects::Int
  weight::Array{Float64, 1}
  length::Array{Float64, 1}
  refrigeration_needed::Array{Bool, 1}
  subcontractor_cost::Array{Float64, 1}
  
  # Object dependencies. Two representation: a set of pairs, or a matrix (element [i,j] is 1 if there is a dependency relationship between i and j, 0 otherwise)
  dependency_set::Set{(Int, Int)}
  dependency_matrix::Array{Bool, 2}
end

type LorrySolution
  # Main field: indexed with object, indicate in which lorry objects go. Lorries have index starting at 1; use 0 to indicate the handling of the object is subcontracted. 
  assignment::Array{Int, 1}
  
  # For bonus only: index with lorry, indicate the team number. Team indices start at 1; use 0 to indicate the lorry belongs to no team. 
  teams::Array{Int, 1}
end

# Helper function to generate both representation for dependencies. 
function dep_set_to_matrix(set::Set{(Int, Int)}, n_objects)
  matrix = zeros(Bool, n_objects, n_objects)
  for dependency in set
    matrix[dependency[1], dependency[2]] = 1
    matrix[dependency[2], dependency[1]] = 1
  end
  return matrix
end

# A first data set. 
function ds()
  max_team_size = 2

  lorries = 4
  max_weight = [3.5, 5, 7.5, 15]
  max_length = [7, 7, 12, 18]
  refrigerable = [false, true, false, true]
  fixed_cost = [10, 20, 30, 50]
  variable_cost = [50, 40, 30, 5]
  refrigeration_cost = [40, 40, 40, 40]
  
  objects = 8
  weight = [1, 2.5, 1.5, 3, 0.5, 2.5, 3, 1]
  length = [5, 2, 2, 1, 5, 4, 2, 2]
  refrigeration_needed = [false, false, false, false, false, false, true, true]
  subcontractor_cost = [80, 95, 150, 140, 850, 85, 180, 25]
  
  dependencies_set = Set{(Int, Int)}({(1, 2), (4, 5)})
  dependency_matrix = dep_set_to_matrix(dependencies_set, objects)
  
  return LorryData(max_team_size, lorries, max_weight, max_length, refrigerable, fixed_cost, variable_cost, refrigeration_cost, objects, weight, length, refrigeration_needed, subcontractor_cost, dependencies_set, dependency_matrix)
end