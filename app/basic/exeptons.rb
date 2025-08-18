=begin
  Ruby exeptions
=end

# Get errors

begin
  result = 10 / 0 # ZeroDivisionError: divided by 0
  puts result
rescue
  # Code that runs when an error occurs
  puts "An error occurred!"
end

begin
  puts 10 / 0
rescue ZeroDivisionError
  puts "Can't divided by 0"
rescue StandardError => e
  puts "Other error: #{e.message}"
end

begin
  puts "Trying something risky..."
  puts "Successfully created!"
rescue => e
  # Code to handle the exception
  puts "Rescued: #{e.message}"
ensure
  # Code that always executes
  puts "Cleaning up resources..."
end

# Raise errors

def sum(a, b)
  raise ArgumentError, "Adder can't be zero" if b == 0
  a + b
end

puts sum(5, 5)
# puts sum(15, 0) # => ArgumentError: Adder can't be zero


# Error classes

class ActionNotPermittedError < StandardError; end


def execute
  raise ActionNotPermittedError, "This actions is not permitted!"
end 

begin
  execute
rescue ActionNotPermittedError => e
  puts "Custom error: #{e.message}"
end
