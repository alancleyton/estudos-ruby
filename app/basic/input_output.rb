=begin
  Input and Output in Ruby
=end

class InputOutput
  # This class demonstrates basic input and output operations in Ruby.

  def initialize
    @input = ""
  end

  def get_input
    puts "Please enter some text:"
    @input = gets.chomp
  end

  def display_output
    puts "You entered: #{@input}"
  end

  def run
    get_input
    display_output
  end
end

InputOutput.new.run
