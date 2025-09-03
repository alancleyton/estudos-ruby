=begin
  Ruby basic functions and methods
=end

# Global functions
# This is a global function that can be called from anywhere in the program.
def greet(name)
  puts "Hello, #{name}!"
end

greet("Alice") # => "Hello, Alice!"

# Class methods
# # This is a class method that can be called on the class itself.
class Person
  # Instance method
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, my name is #{@name}!"
  end
end

person = Person.new("Bob")
person.greet # => "Hello, my name is Bob!"

# Function with default parameters
def sum(a, b = 0)
  a + b
end
puts sum(5)      # => 5
puts sum(5, 3)   # => 8

# Function with named parameters

def greet(name:, age:)
  puts "Hello, #{name}! You are #{age} years old."
end

greet(name: "Alan", age: 28)

# Function return values
def multiply(a, b)
  a * b # Implicitly return
end
result = multiply(2, 3)
puts result # => 6

# Function with unknown number of arguments
def sum_all(*numbers)
  numbers.sum
end
puts sum_all(1, 2, 3)        # => 6

# Private methods

class Account
  # Public method
  def display_balance
    puts "Your balance is $#{balance}"
  end

  private
  
  # Private method
  def balance
    1500
  end
end

account = Account.new
account.display_balance # => "Your balance is $1500"
account.balance # => NoMethodError: private method `balance' called for #<Account:0x0000561c8b8c3f80>

# Static class methods
class MathUtils
  def self.square(x)
    x * x
  end
end

puts MathUtils.square(4) # => 16
