=begin  
  Ruby procs
=end

# Proc example

def do_something(proc)
  proc.call("Alan")
end

greet = Proc.new { |name| puts "Hello #{name}!, Nice to met you!"}

do_something greet

# Converting block to proc

def hello(&greet)
  greet.call("Alan")
end

hello { |name| puts "Hello, #{name}"}
