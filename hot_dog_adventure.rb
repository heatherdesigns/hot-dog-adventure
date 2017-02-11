# hot dog adventure inspired by Marshall
# written by Heather
# February 7, 2017

# Welcome
puts "Welcome to Heather's Hot Dog Stand!"
puts "Home of the Hot Dog Adventure"

puts "-------------------------------"

puts "Let's make a custom hot dog."
puts "Would you like a bun: "
puts "Enter 1 for yes, of course I want a bun."
puts "Enter 2 for no, I don't need a bun."
bun = gets.chomp
if bun == '1'
  bun = "a bun"
elsif bun == '2'
  bun = "no bun"
end # end bun

puts "What type of hot dog would you like?"
puts "Enter 1 for beef"
puts "Enter 2 for turkey"
hotDog = gets.chomp
if hotDog == '1'
  hotDog = "beef"
elsif hotDog == '2'
  hotDog = "turkey"
end # end hotDog

puts "Would you like any toppings on your hot dog?"
puts "Enter 1 for yes"
puts "Enter 2 for no"
topping1 = gets.chomp
if topping1 == '1'
  puts "Sweet! Let's build the ultimate hot dog!"
  puts "Would you like chili or sauerkraut on your hot dog?"
  puts "I don't recommend both chili AND sauerkraut, so please just pick one."
  puts "Enter 1 for chili"
  puts "Enter 2 for sauerkraut"
  answer = gets.chomp
  if answer == '1'
    topping1 = "chili,"
  else
    topping1 = "sauerkraut,"
  end
else
  topping1 = "nothing else"
  puts "You ordered a #{hotDog} hot dog with #{bun}." 
  exit # exit program - hot dog making is done!
end # end toppings

puts "Would you like some cheese on your hot dog?"
puts "Enter 1 for yes"
puts "Enter 2 for no"
answer = gets.chomp
if answer == '1'
  puts "Choose your cheese:"
  puts "Enter 1 for cheddar"
  puts "Enter 2 for mozzarella"
  puts "Enter 3 for jalapeno jack"
  cheese = gets.chomp
  if cheese == '1'
    cheese = "cheddar cheese,"
  elsif cheese == '2'
    cheese = "mozzarella cheese,"
  else
    cheese = "jalapeno jack cheese,"
  end
else
end

puts "Would like to continue to add toppings?"
puts "Enter 1 for yes"
puts "Enter 2 for no"
answer = gets.chomp
if answer == '1'
  puts "OK. Let's add a couple more toppings."
  puts "Would you like to add bacon or sweet pickles to your hot dog?"
  puts "Enter 1 for bacon"
  puts "Enter 2 for sweet pickles"
  moreToppings = gets.chomp
  if moreToppings == '1'
    moreToppings = "bacon,"
  else
    moreToppings = "sweet pickles,"
  end
else
  puts "You ordered a #{hotDog} hot dog with #{topping1} #{cheese} and #{bun}."
  puts "Mmmm..... that sounds delicious. Enjoy your hot dog!"
  exit
end

puts "Let's add one more topping."
puts "How about something with a little more crunch?"
puts "Would you like to add Fritos corn chips or french fried onions?"
puts "Enter 1 for Fritos corn chips"
puts "Enter 2 for french fried onions"
crunch = gets.chomp
if crunch == '1'
  crunch = "Fritos corn chips,"
else
  crunch = "french fried onions,"
end

# wrap it up!
puts "You ordered a #{hotDog} hot dog with #{topping1} #{cheese} #{moreToppings} #{crunch} and #{bun}."
puts "Mmmm..... that sounds delicious. Enjoy your hot dog!"
