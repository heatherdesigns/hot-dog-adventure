# hot dog adventure inspired by Marshall
# written by Heather
# Last revision February 17, 2017

require_relative "./hot_dog_functions.rb"

# Welcome
puts "-" * 35
puts "Welcome to Heather's Hot Dog Stand!"
puts "Home of the Hot Dog Adventure"
puts "-" * 35

# create a hash to hold the hot dog toppings
toppings = Hash.new()
   
puts "Let's make a custom hot dog."
puts "Select your type of bun: "
puts "Enter 1 for a classic New England bun."
puts "Enter 2 for a sweet Hawaiian bun."
puts "Enter 3 for a pretzel bun."
puts "Enter 4 if you do not want a bun."
print " > "
bun = gets.chomp
num_options = 4
bun = validate_input(bun, num_options)  
if bun == "1"
  bun = "a classic New England bun"
elsif bun == "2"
  bun = "a sweet Hawaiian bun"
elsif bun == "3"
  bun = "a pretzel bun"
elsif bun == "4"
  bun = "no bun"
else
end 
toppings["bun"] = bun # add bun to toppings hash

puts "\nWhat type of hot dog would you like?"
puts "Enter 1 for beef"
puts "Enter 2 for turkey"
print " > "
hotDog = gets.chomp
hotDog = validate_input_of_2(hotDog)
if hotDog.to_s == "1"
  hotDog = "beef hot dog"
elsif hotDog.to_s == "2"
  hotDog = "turkey hot dog"
else
end 
toppings["hot_dog"] = hotDog # add type of hot dog to the toppings hash

puts "\nWould you like any toppings on your hot dog?"
puts "Enter 1 for yes"
puts "Enter 2 for no"
print " > "
topping1 = gets.chomp
topping1 = validate_input_of_2(topping1)
if topping1.to_i == 1
  puts "\nSweet! Let's build the ultimate hot dog!"
  puts "Would you like chili or sauerkraut on your hot dog?"
  puts "Enter 1 for chili"
  puts "Enter 2 for sauerkraut"
  puts "Enter 3 for both chili and sauerkraut"
  puts "Enter 4 to skip these toppings"
  print " > "
  answer = gets.chomp
  answer = validate_input_of_4(answer)
  if answer.to_s == "1"
    topping1 = "chili"
  elsif answer.to_s == "2"
    topping1 = "sauerkraut"
  elsif answer.to_s == "3"
    topping1 = "chili, sauerkraut"
  else
    topping1 = ""
  end
  toppings["first_topping"] = topping1 # add chili and/or/not sauerkraut to hot dog toppings hash
else
  topping1 = "nothing else"
  puts "You ordered a #{toppings["hot_dog"]} with #{toppings["bun"]}." 
  exit # exit program - hot dog making is done!
end 

puts "\nWould you like some cheese on your hot dog?"
puts "Enter 1 for yes"
puts "Enter 2 for no"
print " > "
answer = gets.chomp
answer = validate_input_of_2(answer)
if answer.to_i == 1
  puts "Choose your cheese:"
  puts "Enter 1 for cheddar"
  puts "Enter 2 for mozzarella"
  puts "Enter 3 for jalapeno jack"
  puts "Enter 4 for ALL the cheeses!!!!"
  print " > "
  cheese = gets.chomp
  cheese = validate_input_of_4(cheese)
  if cheese.to_s == "1"
    cheese = "cheddar cheese"
  elsif cheese.to_s == "2"
    cheese = "mozzarella cheese"
  elsif cheese.to_s == "3"
    cheese = "jalapeno jack cheese"
  else
    cheese = "cheddar, mozzarella and jalapeno jack cheese"
  end
else # answer was 2 no cheese, move along.
end
toppings["cheese"] = cheese # add cheese to toppings hash

puts "\nWould like to continue to add toppings?"
puts "Enter 1 for yes"
puts "Enter 2 for no"
print " > "
answer = gets.chomp
answer = validate_input_of_2(answer)
if answer.to_i == 1
  puts "\nOK. Let's add a couple more toppings."
  puts "Would you like to add bacon or sweet pickles to your hot dog?"
  puts "Enter 1 for bacon"
  puts "Enter 2 for sweet pickles"
  puts "Enter 3 for bacon AND sweet pickles"
  puts "Enter 4 to skip these toppings"
  print " > "
  moreToppings = gets.chomp
  moreToppings = validate_input_of_4(moreToppings)
  if moreToppings.to_s == "1"
    moreToppings = "bacon"
  elsif moreToppings.to_s == "2"
    moreToppings = "sweet pickles"
  elsif moreToppings.to_s == "3"
    moreToppings = "bacon, sweet pickles"
  else
    moreToppings = ""
  end
else
  puts "You ordered a #{toppings["hot_dog"]} with #{toppings["first_topping"]} #{toppings["cheese"]} and #{toppings["bun"]}."
  puts "Mmmm..... that sounds delicious. Enjoy your hot dog!"
  exit
end
toppings["more_toppings"] = moreToppings # add bacon or/and/not sweet pickles to the toppings hash

puts "\nLet's add one more topping."
puts "How about something with a little more crunch?"
puts "Would you like to add Fritos corn chips or french fried onions?"
puts "Enter 1 for Fritos corn chips"
puts "Enter 2 for french fried onions"
puts "Enter 3 for Fritos corn chips AND french fried onions"
puts "Enter 4 to skip these toppings"
print " > "
crunch = gets.chomp
crunch = validate_input_of_4(crunch)
if crunch.to_s == "1"
  crunch = "Fritos corn chips"
elsif crunch.to_s == "2"
  crunch = "french fried onions"
elsif crunch.to_s == "3"
  crunch = "Fritos corn chips, french fried onions"
else
  crunch = ""
end
toppings["crunch"] = crunch # add fritos or fried onions to the toppings hash
 
# print hot dog order accessing the items in the hash
puts "\nThis is the HASH OUTPUT accessing the individual values:"
puts "You ordered a #{toppings["hot_dog"]} with #{toppings["bun"]}, #{toppings["first_topping"]}, #{toppings["cheese"]}, #{toppings["more_toppings"]} and #{toppings["crunch"]}."

puts "\nThis is the HASH OUTPUT of hot dog toppings using a loop:"
puts "Hot Dog, bun and toppings: "
toppings.each_value do |value|
  puts "\t#{value}"
end
