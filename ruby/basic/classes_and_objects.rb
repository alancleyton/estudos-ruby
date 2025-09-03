=begin  
  Ruby basic classes and objects
=end

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def talk
    puts "Hello, I am #{@name} and I am #{@age} years old!"
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

person = Person.new("Alice", 30)
person.talk # => "Hello, I am Alice and I am 30 years old!"

person.name=('Bob')
puts person.name

# Class attr_reader attribute accessor

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

product = Product.new("Laptop", 1000)
puts product.name, product.price # => "Laptop", 1000

# Class attr_writer attribute accessor

class Config
  attr_writer :setting

  def initialize(setting)
    @setting = setting
  end

  def show_setting
    puts "Current setting: #{@setting}"
  end
end

config = Config.new("Dark Mode")
config.show_setting # => "Current setting: Dark Mode"

config.setting = "Light Mode"
config.show_setting # => "Current setting: Light Mode"

# Class attr_accessor attribute accessor
# This combines both attr_reader and attr_writer

class User
  attr_accessor :username, :email
end

user = User.new
user.username = "john_doe"
user.email = "john@example.com"
puts user.username, user.email # => "john_doe", "john@example.com"


# Instance methods and class methods

class Car
  def initialize(maker, model)
    @maker = maker
    @model = model
  end

  def details
    "#{@maker} #{@model}"
  end

  def self.description
    "Cars are vehicles with four wheels."
  end
end

car = Car.new("Toyota", "Corolla")
puts car.details # => "Toyota Corolla"
puts Car.description # => "Cars are vehicles with four wheels."

# Class access modifiers

class Employee
  def initialize(name, email)
    @name = name
    @email = email

    create_account
  end

  def display_info
    puts "Name: #{@name}, Email: #{@email}"
  end

  def verify_email(employee)
    "This email already exists." if employee.email == @email
  end

  private

  def create_account
    puts "Creating account for #{@name}..."
  end

  protected

  def email
    @email
  end
end

employee = Employee.new("John Doe", "john.doe@example.com")
employee.display_info # => "Name: John Doe, Email: john.doe@example.com"
new_employee = Employee.new("Jane Doe", "john.doe@example.com")
puts new_employee.verify_email(employee) # => "This email already exists."

# Class Inheritance

class Animal
  def walk
    puts 'Animal walking...'
  end
end

class Lion < Animal
  def roar
    puts 'Lion Roar...'
  end
end

lion = Lion.new
lion.roar
lion.walk

class Dog < Animal
  def walk
    puts 'Dog walking...'
  end
end

dog = Dog.new
dog.walk  # => Dog walking...

class Cat < Animal
  def walk
    puts 'Cat walking...'

    super
  end
end

cat = Cat.new
cat.walk 
# => Cat walking...
# => Animal walking...

class Character
   attr_reader :name, :level

  def initialize(name, level)
    @name = name
    @level = level
  end
end

class Warrior < Character  
  def initialize(name, level, attributes = {})
    super(name, level)
    @attributes = attributes
  end
end

warrior = Warrior.new('kirT', 10, { str: 16, dex: 10, int: 8, wis: 12 })
puts warrior.name # => kirT
