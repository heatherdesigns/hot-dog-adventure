# hot dog adventure inspired by Marshall
# written by Heather
# Last revision February 14, 2016

# Welcome
puts "Welcome to Heather's Hot Dog Stand!"
puts "Home of the Hot Dog Adventure"

puts "-------------------------------"

# create an array to hold the hot dog toppings
toppings = []

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
toppings.push(bun) # add bun to toppings array

puts "What type of hot dog would you like?"
puts "Enter 1 for beef"
puts "Enter 2 for turkey"
hotDog = gets.chomp
if hotDog == '1'
  hotDog = "beef hot dog"
elsif hotDog == '2'
  hotDog = "turkey hot dog"
end # end hotDog
toppings.push(hotDog) # add type of hot dog to the toppings array

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
  toppings.push(topping1) # add chili or sauerkraut to hot dog toppings array
else
  topping1 = "nothing else"
  puts "You ordered a #{hotDog} with #{bun}." 
  puts "ARRAY OUTPUT: You ordered a #{toppings[1]} with #{toppings[0]}." # print accessing items in array --> problem with this is that it's hard to know what index 0 and index 1 are.......
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

toppings.push(cheese) # add cheese to toppings array

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
  puts "You ordered a #{hotDog} with #{topping1} #{cheese} and #{bun}."
  puts "ARRAY OUTPUT: You ordered a #{toppings[1]} with #{toppings[2]} #{toppings[3]} and #{toppings[0]}."
  puts "Mmmm..... that sounds delicious. Enjoy your hot dog!"
  exit
end
toppings.push(moreToppings) # add bacon or sweet pickles to the toppings array

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
toppings.push(crunch) # add fritos or fried onions to the toppings array

# wrap it up! 
puts "\nORIGINAL OUTPUT: You ordered a #{hotDog} hot dog with #{topping1} #{cheese} #{moreToppings} #{crunch} and #{bun}."
puts "Mmmm..... that sounds delicious. Enjoy your hot dog!"

# print hot dog order again, this time accessing the items in the toppings array and printing via a loop
puts "\nThis is the ARRAY OUTPUT accessing the individual indexes:"
puts "You ordered a #{toppings[1]} with #{toppings[2]} #{toppings[3]} #{toppings[4]} #{toppings[5]} and #{toppings[0]}."


puts "\nThis is the ARRAY OUTPUT of hot dog toppings using a loop:"
toppings.each do |item|
  puts "#{item}"
end
