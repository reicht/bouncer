def check_age(country)
  puts "Please enter your age:"
  print "< "
  age = gets.chomp.to_i

  case
  when age > 24
    puts "Congratulations, you may rent a car, drink, smoke, or vote as you wish.
    Preferably not all at once."

  when age > 20
    puts "It is permitted for you to drink, smoke, or vote, at your leisure."

  when age > 17
    puts "Legal adults may partake in both smoking, and voting."

  when country.upcase == "k", age >15
    puts "Are you under parental supervision? (Y) for Yes, anything else for No."
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

def residency_check
  puts "Which country are you asking from? U(S) or U(K)?"
  print "< "
  residence = gets.chomp
  if residence.upcase == "S"
    check_age(residence)
  elsif residence.upcase == "K"
    check_age(residence)
  else
    puts "Invalid entry"
    residency_check
  end
end

def start
  again = "y"
  while again.upcase == "Y"

  residency_check

  puts "Would you like to check another age? (Y) for another age, anything else to exit."
  print"< "
  again = gets.chomp
  if again.upcase == "Y"
    puts "Beginning again.   <><><><><><><><><><><>"
  else
    puts "Goodbye"
  end
  end

end



start
