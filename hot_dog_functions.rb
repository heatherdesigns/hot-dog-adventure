# validate input
def validate_input(number, num_options)
  while number.to_i < 1 || number.to_i > num_options
    puts "You entered #{number}."
    puts "That is not an acceptable response."
    print "Please enter a number between 1 and #{num_options} > "
    number = gets.chomp
  end
  return number
end