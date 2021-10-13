-- Tables are the main data structure in Lua and the breadth of their use is
-- somewhat unique to Lua.
-- They can be used to represent arrays, sets, records, and other structured
-- data. They are essentially associative arrays (kinda like maps in other languages.)

-- Tables are objects in Lua, meaning they have constructors and potentially
-- other methods.

myTable = {}
j = "k"
myTable[j] = 42
print(myTable["k"])

myTable[42] = "k"
print(myTable[42])

myTable[j] = myTable[j] + 1
print(myTable[j])

-- A table can have a variety of indices, and it grows to accomodate the size of
-- the indices created.
myTable[3.4] = "even float indices!"
print(myTable[3.4])
--
print(myTable["doesn't exit"])
-- we can reference an index with the . operator instead of the []
print(myTable.k)
-- but beware, easy to mix varables with values
print(myTable.j)

l = {1, 2, 3, 4, 5, 6, 7}
print(l) --> It can get complicated to pretty print a table...
print("Size of table: " .. #l)

-- can also initialize key value pairs in a table
m = {x = 0, y = 0, z = 100}
print(m.z)

-- arrays
a = {}
for i = 1, 10 do
  a[i] = i
end
print(a[0])
print("Indices for tables generally start with 1 in Lua")
for i = 1, #a do
  print(a[i])
end

a[10000] = 5
-- what does # return?
print("# after appending: " .. #a)
a[11] = nil
a[12] = 12
a[13] = nil
print("# after appending again: " .. #a)

-- iterating table contents
t = {100, y = "cool", x = "is", print, "this"}
for k, v in pairs(t) do
  print(k, v)
end

-- there is a table library that does stuff like insert and move items around
print()
table.insert(a, 5, 100)
for i = 1, #a do
  print(a[i])
end
