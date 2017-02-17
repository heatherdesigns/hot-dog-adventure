# validate option of inputting 2 numbers 
def validate_input_of_2(number)
  while number.to_i < 1 || number.to_i > 2
    puts "You entered #{number}."
    puts "That is not an acceptable response." 
    print "Please enter 1 or 2 > "
    number = gets.chomp
  end
  return number
end

# validate option of inputting 4 numbers
def validate_input_of_4(number)
  while number.to_i < 1 || number.to_i > 4
    puts "You entered #{number}."
    puts "That is not an acceptable response." 
    print "Please enter 1, 2, 3 or 4 > "
    number = gets.chomp
  end
  return number
end

# validate with one function using a range of numbers with data coming in
def validate_input(number, num_options)
  while number.to_i < 1 || number.to_i > num_options
    puts "You entered #{number}."
    puts "That is not an acceptable response."
    print "Please enter a number between 1 and #{num_options} > "
    number = gets.chomp
  end
  return number
end