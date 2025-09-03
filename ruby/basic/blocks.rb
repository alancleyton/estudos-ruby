=begin  
  Ruby blocks
=end

# Inline block

arr = [1, 2, 3]

arr.each { |i| puts i }

# do...end block

arr.each do |i|
  puts i
end

# call block with yield

def greet
  puts "Hello!"
  yield # execute given block
  puts "Bye!"
end

greet { puts "Welcome!" }

# yield with arguments

def yield_with_args
  yield "Hello World"
  yield 100
  yield :user
end

yield_with_args { |arg| puts arg }

# verify block given with block_given? function

def hello(name)
  puts "Hello!"
  yield name if block_given? # only execute the block if given
  puts "Nice to met you!"
end

hello("Alan") { |name| puts "Your name is #{name}" }
