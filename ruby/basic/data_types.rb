=begin
  Ruby basic data types
  Ruby supports several basic data types, including:
  - Integer: Represents whole numbers, positive or negative.
  - Float: Represents decimal numbers.
  - String: Represents sequences of characters.
  - Symbol: Represents immutable, interned strings.
  - Array: Represents ordered collections of objects.
  - Hash: Represents key-value pairs.
  - Nil: Represents the absence of a value.
  - Boolean: Represents true or false values.
=end

class DataTypes
  # This class demonstrates basic Ruby data types.
  
  def initialize
    @integer = 42
    @float = 3.14
    @string = "Hello, Ruby!"
    @symbol = :ruby_symbol
    @array = [1, 2, 3, "four", :five]
    @hash = { key1: "value1", key2: "value2" }
    @nil_value = nil
    @boolean_true = true
    @boolean_false = false
  end

  def display_data_types
    puts "Integer: #{@integer}"
    puts "Float: #{@float}"
    puts "String: #{@string}"
    puts "Symbol: #{@symbol}"
    puts "Array: #{@array.inspect}"
    puts "Hash: #{@hash.inspect}"
    puts "Nil: #{@nil_value.inspect}"
    puts "Boolean True: #{@boolean_true}"
    puts "Boolean False: #{@boolean_false}"
  end
end

DataTypes.new.display_data_types
