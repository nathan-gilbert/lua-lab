-- This is a comment!
--[[
    print("This is a mult-line comment")
    print("")
--]]
-- Examples below are often from `Programming in Lua` by Roberto Lerusalimischy
-- There 8 basic types in Lua
-- nil, boolean, number, string, function, thread, table and userdata
print("Types")
print(type(nil)) --> nil
print(type(true)) --> boolean
print(type(42)) --> number
print("THIS IS LUA!") --> string
print(type(print)) --> function
print(type({})) --> table

-- userdata type allows for arbritray C data to be stored in Lua variables
-- tables are something that sets Lua apart from other languages

-- Global variables, beware, you can create them anywhere!

-- Numbers

print("Wow, we can do scientific notation " .. 10E+20)
print("We can do order of ops and mix floats with ints, e.g., -(3 * 6.0) = " .. -(3 * 6.0))
print("There is a math std library: " .. math.sin(math.pi / 2))

-- Strings

a = "Hello World"
print("Length of string a: " .. #a)
print('first line\nsecond line\n"double quotes", \'single quotes\'')
print(
  [[
      This is a long string...
     _________
    / ======= \
   / __________\
  | ___________ |
  | | -       | |
  | |         | |
  | |_________| |________________________
  \=____________/    Lua Rocks!          )
  / """"""""""" \                       /
 / ::::::::::::: \                  =D-'
(_________________)
]]
)
