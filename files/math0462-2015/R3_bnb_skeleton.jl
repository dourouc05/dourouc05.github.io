using DataStructures
using JuMP
using Gurobi

function solver()
  return GurobiSolver(OutputFlag=false)
end

# The problem will be a knapsack. This instance will force to branch at least once. 
n_objects = 4 # Also the number of variables. 
values = [50, 40, 45, 55]
weights = [5, 4, 3, 4]
max_weight = 13

function get_lp()
  m = Model(solver=solver())
  @defVar(m, 0 <= x[1:n_objects] <= 1)
  @addConstraint(m, dot(weights, x) <= max_weight)
  @setObjective(m, Max, dot(values, x))
  return m, x
end

function get_mip()
  m = Model(solver=solver())
  @defVar(m, x[1:n_objects], Bin)
  @addConstraint(m, dot(weights, x) <= max_weight)
  @setObjective(m, Max, dot(values, x))
  return m, x
end

integer_precision = 1e-4 # Integers are represented as floating-point values: if they are close enough to an integer, they are considered integer.
gap_precision = 1e-3

# Structure of a node in the tree. 
type BBNode
  # Tree structure. 
  parent::Union(Nothing, BBNode)
  children::Array{BBNode, 1}
  
  # Branching information. 
  # TODO
  
  # Node's LP information. 
  # TODO
end

type BBStatus
  upper_bound::Float64 # Computed from the LPs. 
  lower_bound::Float64 # Incumbent.
  incumbent::Array{Int, 1} # Rounded from floating-point solution. 
  
  root::BBNode
  # Optimisations: list of nodes to avoid going through all the tree, sort nodes so the most interesting ones are picked up first, etc. 
end

function solution_is_boolean(sol::Array{Float64,1})
  for s in sol
    if s > integer_precision && s < 1 - integer_precision
      return false
    end
  end
  return true
end

function gap(status::BBStatus)
  # Will return NaN if no integer-feasible solution is found. 
  return (status.upper_bound - status.lower_bound) / status.upper_bound
end

function is_pruned(node::BBNode, status::BBStatus; quiet::Bool = true)
  if false # TODO
    if ! quiet println("Node pruned by infeasibility.") end
    return true, :Feasibility
  end
  
  if false # TODO
    if ! quiet println("Node pruned by optimality.") end
    return true, :Optimality
  end

  if false # TODO
    if ! quiet println("Node pruned by bounds.") end
    return true, :Bounds
  end
  
  # TODO: other reasons to prune? 
  
  return false, :None
end

function get_next_node(status)
  # Find a node which has no children and is not pruned. (Pruning is then used here, together with tree-exploration strategy!)
  # TODO
end

function is_variable_branched_on(node::BBNode, var::Int)
  # Depends on the path followed from root to now. 
  # TODO
  return is_variable_branched_on(node.parent, var) # TODO: you can optimise this by storing more information into the tree. 
end

function find_branching_variable(sol::Array{Float64,1}, current_node::BBNode)
  # Only called on non-integer solutions. 
  n_vars = length(sol)
  for s in 1:n_vars
    # TODO: select interesting variables. 
  end
  # TODO: pick the most interesting once. (At first, the first one, or at random, or...)
  println(" -> Where shall I branch?")
end

function branch_lp(current_node::BBNode, new_variable::Int, value::Int)
  lp, vars = get_lp()
  
  # TODO: retrieve the previous nodes' branching decisions. 
  # TODO: impose the new branching decision. 
  return lp, vars
end

function create_node(parent::BBNode, new_variable::Int, value::Int)
  # TODO: create a new BBNode instance. 
end

function round_solution(sol::Array{Float64, 1})
  return [(s < .5) ? 0 : 1 for s in sol]
end

function get_upper_bound(status::BBStatus)
  # If the tree is developed such that both children are always created at the same time, retrieve the leaves' LP values, take the minimum of them. 
  # TODO
end

# TODO: write functions to print the status of the exploration, including the tree (skeleton below). 
import Base.print
 
function print(tree::BBNode, status::BBStatus)
  function space(level::Int)
    return "  " ^ level
  end

  function sub_print(node::BBNode, level::Int)
    print(" . ")
    print(space(level))
    
    if true # TODO: not root node
      print("Variable " * string(node.variable) * "   :   " * string(node.variable_value) * "   ;   " * string(node.lp_value))
    else
      print("Root node:               " * string(node.lp_value))
    end
    
    if true # TODO: integer_feasible
      print("  (I)")
    else
      print("     ")
    end
    
    pruned, why_pruned = is_pruned(node, status; quiet=true)
    if pruned
      print("  (P: " * string(why_pruned) * ")")
    else
      print("     ")
    end
    
    print("\n")
    
    for child in [] # TODO: children of current node. 
      sub_print(child, level + 1)
    end
  end
  
  sub_print(tree, 2)
end

function print(status::BBStatus)
  println(" . Complete branch-and-bound status, including tree.")
  println(" . Upper bound: " * string(status.upper_bound))
  println(" . Lower bound: " * string(status.lower_bound))
  println(" . Incumbent: " * string(status.incumbent))
  println(" . Tree: ")
  print(status.root, status)
  print("\n")
end

function bnb()
  # TODO: solve the root node, ensure it has an optimal solution (not unbounded or infeasible). 
  # TODO: check whether the root node has an integer solution (can happen: total unimodularitys, for example). 
  # TODO: create the root node, create the status variable. 
  println("[0] Root node solved. LP value: " * string(root_obj) * ".") # TODO: define root_obj. 
  
  # Node exploring: do both children at once, while exploring current node. Not what is usually done, but easier (no list of nodes to explore). 
  n_nodes_explored = 0
  while gap(status) > gap_precision
    n_nodes_explored += 1
    println("[" * string(n_nodes_explored) * "] Exploring one more node.")
    
    # Find a node to explore. There may be none. 
    node_to_explore = get_next_node(status)
    if node_to_explore == nothing
      println("No more branches to explore in the tree.")
      break
    end
    
    # Decide the branching variable. 
    var_index = find_branching_variable(node_to_explore.solution, node_to_explore)
    println("[" * string(n_nodes_explored) * "] Branching on variable " * string(var_index))
    
    # Create new nodes with branching on this *binary* variable (with all constraints from root to this new branch).
    left = create_node(node_to_explore, var_index, 0)
    right = create_node(node_to_explore, var_index, 1)
    
    # Update the parent with the new children. 
    node_to_explore.children = [left, right]
    
    # TODO: update the bounds (first lower, then maybe upper) and, if necessary, update the incumbent. 
    if true # TODO: left is new incumbent. 
      println("[" * string(n_nodes_explored) * "] Found a new incumbent. Value: " * string(0)) # TODO: value of node left. 
      status.lower_bound = left.lp_value
      status.incumbent = round_solution(left.solution)
    end
    if true # TODO: right is new incumbent. 
      println("[" * string(n_nodes_explored) * "] Found a new incumbent. Value: " * string(0)) # TODO: value of node right. 
      status.lower_bound = right.lp_value
      status.incumbent = round_solution(right.solution)
    end
    status.upper_bound = get_upper_bound(status)
    
    # End iteration. 
    println("[" * string(n_nodes_explored) * "] Iteration done. Gap: " * string(gap(status)) * ". Bound: [" * string(status.lower_bound) * "; " * string(status.upper_bound) * "].")
  end
  
  print(status)
  println("\n")
end