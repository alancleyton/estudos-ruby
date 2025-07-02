=begin
  My first Ruby program :)
  Ruby is awesome!
=end

class Greetings
  # This class represents a simple greeting system.
  # It initializes with a name and provides a method to greet.
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    "Hello, my name is #{@name}!"
  end
end

puts Greetings.new("Alan").greet

