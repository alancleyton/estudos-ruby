=begin
  Requiring files and modules in ruby
=end

require_relative 'utils/math'
require_relative 'utils/greetings'

# Example usage of MathUtils, which is defined in the required file
puts MathUtils.new.sum(5, 10)

class Person
  include Greetings
end

# Extending module methods to a class
module User
  def show_user
    "Show User!"
  end
end

class UserProfile
  extend User
end

puts UserProfile.show_user  # Outputs: Show User!

# Example usage of the Person class and its methods
person = Person.new
puts person.say_hello

# Using module with namespacing
module Utils
  class Math
    def sum(a, b)
      a + b
    end
  end
end

math = Utils::Math.new
puts math.sum(3, 4)  # Outputs: 7

# Module with constants
module Config
  API_KEY = '12345-ABCDE'
  VERSION = '1.0.0'
end

puts Config::API_KEY  # Outputs: 12345-ABCDE
puts Config::VERSION   # Outputs: 1.0.0

# Nesting modules
module Api
  module V1
    class UserController
      def show
        "Showing user"
      end
    end
  end
end

puts Api::V1::UserController.new.show  # Outputs: Showing user

# Module methods

module HelloWorld
  def self.greet
    "Hello, World!"
  end
end

puts HelloWorld.greet  # Outputs: Hello, World!
