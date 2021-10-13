-- simple function definition
function factorial(n)
  if n == 0 then
    return 1
  else
    return n * factorial(n - 1)
  end
end

print(factorial(5))

-- function can return multiple values
function maximum(a)
  local mi = 1 -- local variables to this function!
  local m = a[mi]
  for i = 1, #a do
    if a[i] > m then
      mi = i
      m = a[i]
    end
  end
  return m, mi -- returns the max value and index
end
print(maximum({8, 10, 23, 12, 5, 2021, 0, -5}))

-- we don't even have to specify the argument list
function add(...)
  local sum = 0
  -- parenthesis are optional on string or table constructor arguments
  for _, v in ipairs {...} do
    sum = sum + v
  end
  return sum
end
print(add(3, 4, 10, 12, 25))

-- Lua is properly tail recursive
--  this method will never overflow the stack
function foo(n)
  if n > 0 then
    return foo(n - 1)
  end
end

-- Functions are first class values in Lua
-- be careful, you can overwrite global functions
math.sin = print
math.sin("whoa where am I?")
