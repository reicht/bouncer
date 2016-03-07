def start
  again = "y"
  while again.upcase == "Y"

  puts "Which country are you asking from? U(S) or U(K)?"
  print "< "
  residence = gets.chomp
  check_age(residence)

  puts "Would you like to check another age? (Y)es or (N)o"
  print"< "
  again = gets.chomp
  if again.upcase == "Y"
    puts "Beginning again.   <><><><><><><><><><><>"
  else
    puts "Goodbye"
  end
  end

end

def check_age(country)
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

  when country.upcase == "k", age >15
    puts "Are you under parental supervision? (Y)es or (N)o"
    print "< "
    supervise = gets.chomp
      if supervise.upcase == "Y"
        puts "You are permitted to drink under adult supervision."
      else
        puts "16 and 17 year olds may only drink with parental supervision."
      end
  else
    puts "Minors are permitted to have patience"
  end

end

start
