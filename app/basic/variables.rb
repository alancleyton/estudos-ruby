
# Local variables

def sum(a, b)
  result = a + b # This variable is local to the sum method
  puts "The sum of #{a} and #{b} is #{result}"
end

sum(5, 10)

# puts result # => undefined local variable or method `result`

# Global variables

$message = "Hello, World!" # This variable is global

def greet
  puts "#{$message} from greet method" # Accessing the global variable
end

puts $message # => "Hello, World!"
greet # => "Hello, World! from greet method"


$counter = 0

def increment_counter
  $counter += 1 # Incrementing the global variable
end

increment_counter

puts $counter # => 1

# Instance variables

class Person
  def initialize(name)
    @name = name # This variable is an instance variable
  end

  def say_my_name
    puts "My name is #{@name}"
  end
end

p1 = Person.new("Alice")
p2 = Person.new("Bob")

puts p1.say_my_name # => "My name is Alice"
puts p2.say_my_name # => "My name is Bob"

# accessing instance variable outside the class

class Car
  def initialize(model)
    @model = model # This variable is an instance variable
  end

  def model
    @model # Returning the instance variable
  end
end

car = Car.new("Toyota")
puts car.model # => "Toyota"

# using attr_accessor to create getter and setter methods for instance variables

class User
  attr_accessor :username # Creates getter and setter for @username

  def initialize(username)
    @username = username # This variable is an instance variable
  end
end

user = User.new("john_doe")
puts user.username # => "john_doe"
user.username = "jane_doe" # Using setter method
puts user.username # => "jane_doe"

# Class variables

class Counter
  @@count = 0 # This variable is a class variable

  def self.increment
    @@count += 1 # Incrementing the class variable
  end

  def self.count
    @@count # Returning the class variable
  end
end

Counter.increment
Counter.increment

puts Counter.count # => 2

# Constant variables

PI = 3.14159 # This variable is a constant
PI = 3.1416 # => Warning: already initialized constant PI
ENVIRONMENT = "production" # Another constant variable
DEFAULT_TIMEOUT = 30 # Default timeout constant
