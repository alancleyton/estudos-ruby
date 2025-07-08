=begin
  Loops in Ruby
=end

# While loop
i = 0
while i < 5
  puts "While loop iteration: #{i}"
  i += 1
end

c = 0
while true
  puts "This will run forever unless interrupted"
  break if c >= 5
  c += 1
end

a = 0
while a < 5
  a += 1
  next if a == 3
  puts "Skipping 3, current value: #{a}"
end

counter = 0
puts counter += 1 while counter < 5

# Until loop
b = 0
until b >= 5
  puts "Until loop iteration: #{b}"
  b += 1
end

# For loop
for j in 1..5
  puts "For loop iteration: #{j}"
end

names = ["Alice", "Bob", "Charlie"]

for name in names
  puts "For loop with array: #{name}"
end

person = { name: "John", age: 30, city: "New York" }

for key, value in person
  puts "For loop with hash - #{key}: #{value}"
end

for index in 1..3
  puts "For loop with range: #{index}"
end

puts "index variable can be used outside the loop: #{index}"

# Each method with an array 

numbers = [1, 2, 3, 4, 5]

numbers.each do |num|
  puts "Each method value: #{num}"
end

(1..5).each do |num|
  puts "Each method with range value: #{num}"
end

users = { "alice": 25, "bob": 30, "charlie": 35 }

users.each do |name, age|
  puts "User: #{name}, Age: #{age}"
end

fruits = ["apple", "banana", "cherry"]

fruits.each_with_index do |fruit, index|
  puts "Fruit: #{fruit}, Index: #{index}"
end

# Times method
5.times do |k|
  puts "Times method iteration: #{k}"
end

# Loop method
n = 0
loop do
  puts "Loop method iteration: #{n}"
  break if n == 5 # break the loop
  n += 1
end
