local function foo(a)
  local status, result = pcall(function() 
    if a == nil then
      return "Argument 'a' cannot be nil." --Return a string error message instead of directly calling error
    end
    return a + 1
  end)
  if not status then
    print("Error: " .. result)
  else
    print(result)
  end
end

local result = foo(nil)
print("\nTesting with a valid value:")
result = foo(5)
print(result) 