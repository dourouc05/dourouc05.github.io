# For part 1. 
function lorry1(data::LorryData, model::Model)
  sol = [1, 2, 2, 1, 0] # Object 1 in lorry 1, 2 in 2, 3 in 2, 4 in 1; object 5 is subcontracted. 
  return LorrySolution(sol)
end

# For part 2. 
function lorry2(data::LorryData, model::Model)
  return lorry1(data, model)
end

# For part 3. 
function lorry3(data::LorryData, model::Model)
  return lorry1(data, model)
end

# For part 4. 
function lorry4(data::LorryData, model::Model)
  return lorry1(data, model)
end

# For part 5. 
function lorry5(data::LorryData, model::Model)
  return lorry1(data, model)
end

# For part 6 (bonus). 
function lorry6(data::LorryData, model::Model)
  return lorry1(data, model)
end