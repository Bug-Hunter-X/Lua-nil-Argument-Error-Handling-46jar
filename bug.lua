local function foo(a)
  if a == nil then
    error("Argument 'a' cannot be nil.")
  end
  return a + 1
end

local result = foo(nil)
print(result)