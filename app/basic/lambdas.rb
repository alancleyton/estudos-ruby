=begin  
  Ruby lambdas
=end

# Create and call lambdas

lambda_1 = -> (name) { puts "Hello, #{name}"}
lambda_2 = lambda { |name| puts "Hello, #{name}"}

lambda_1.call("John") # => Hello, John
lambda_2.call("Alan") # => Hello, Alan

# lambda arguments parameters

proc = Proc.new { |name| puts "Hi! Your name is #{name}" }

proc.call # => Hi! Your name is

lamb = -> (name) { puts "Hi! Your name is #{name}" }

# lamb.call "" # => Error: wrong number of arguments (given 0, expected 1)

lamb.call("Alan")

# lambda vs procs return

def method_with_proc
  Proc.new { return "return from proc..." }.call
  return "return from method..."
end

puts method_with_proc # => return from proc...

def method_with_lambda
  -> { return "return from lambda..." }.call
  return "return from method..."
end

puts method_with_lambda # => return from method...
 