=begin
  Ruby basic conditionals
=end

class Conditionals
  # This class demonstrates basic Ruby conditionals.

  AGE = 28
  AUTHENTICATED = false
  STATUS = 0
  HAS_DRIVER_LICENSE = true

  def check_age
    if Conditionals::AGE < 18
      puts "Minor"
    elsif Conditionals::AGE >= 18 && Conditionals::AGE < 60
      puts "Adult"
    else
      puts "Senior"
    end
  end

  def check_authentication
    unless Conditionals::AUTHENTICATED
      puts "User is not authenticated"
    else
      puts "User is authenticated"
    end
  end

  def check_user
    puts "User is adult" if Conditionals::AGE >= 18
    puts "User is not authenticated" unless Conditionals::AUTHENTICATED
    puts "User is authenticated" if Conditionals::AUTHENTICATED
  end

  def ternary_operator
    age_status = Conditionals::AGE < 18 ? "Minor" : "Adult"
    puts "User is a #{age_status}"
  end

  def user_status
    case Conditionals::STATUS
    when 0
      puts "User is inactive"
    when 1
      puts "User is active"
    when 2
      puts "User is banned"
    else
      puts "Unknown status"
    end
  end

  def drive
    can_drive and puts 'Drive...'
  end

  def can_drive
    Conditionals::AGE >= 18 && Conditionals::HAS_DRIVER_LICENSE
  end
end

conditionals = Conditionals.new
conditionals.check_age
conditionals.check_authentication
conditionals.check_user
conditionals.ternary_operator
conditionals.user_status
conditionals.drive

# && || vs and or

a = true && false # (true && false)
b = true and false # (b = true) and false

puts(a) # => false
puts(b) # => true
