def start
  again = "y"
  while again.upcase == "Y"

  check_age

  puts "Would you like to check another age?"
  print"< "
  again = gets.chomp
  end

end

def check_age
  puts "Please enter your age:"
  print "< "
  age = gets.chomp.to_i

  case
  when age > 25
    puts "Congratulations, you may rent a car, drink, smoke, or vote as you wish.
    Preferably not all at once."

  when age > 21
    puts "It is permitted for you to drink, smoke, or vote, at your leisure."

  when age > 18
    puts "Legal adults may partake in both smoking, and voting."

  else
    puts "Minors are permitted to have patience"
  end

end

start
