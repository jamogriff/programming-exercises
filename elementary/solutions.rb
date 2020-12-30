puts "Hello, world! To whom am I speaking to?"
userName = gets.chomp

if userName == "Kelsie" or userName == "Kels"
  puts "What a beautiful name.... #{userName}."

else
  puts "Nice, to meet you #{userName}."
end

print "\n"
# Start of main function selection
puts "I have multiple functions. Please select one to continue: "
puts "  1 - Compute sum of numbers divisible by 3 or 5 from 1 to n."
puts "  2 - Compute sum of numbers from 1 to n."
puts "  3 - Compute product of numbers from 1 to n."
puts "  4 - Display 12x12 Times Table."
puts "  5 - List all prime numbers."
userChoice = gets.chomp

# USER SELECTION 1 - SUM OF NUMBERS DIVISIBLE BY 3 OR 5
if userChoice == "1"
  puts "Think of a number, and I will add all the numbers divisible by 3 or 5 that come before it: "
  userInput = gets.chomp # leaving this var inact so I can refer to original number
  userNum = userInput.to_i
  sum = userNum # if we were counting all numbers until userNum I would state sum = 0

  while userNum > 1 do # not setting >= to 1 because otherwise a 0 will slip into the if statement. Doesn't matter that 0 is added, but its more efficient
    userNum -= 1 # putting this first so userNum doesn't get counted twice if its a multiple of 3 or 5
    if userNum % 3 == 0 or userNum % 5 == 0
      sum += userNum
      puts "Found a multiple of 3 or 5: #{userNum}"
    end
  end

  puts "The sum of all of the numbers divisible by 3 or 5 from 1 to #{userInput} is #{sum}."

# USER SELECTION 2 - SUM OF NUMBERS 
elsif userChoice == "2"
  puts "Think of a number, and I will add all the numbers that come before it: "
  userInput = gets.chomp # leaving this var inact so I can refer to original number
  userNum = userInput.to_i
  sum = 0

  while userNum >= 1 do
    sum += userNum
    userNum -= 1 
  end

  puts "The sum of all of the numbers from 1 to #{userInput} is #{sum}."

# USER SELECTION 3 - PRODUCT OF NUMBERS
elsif userChoice == "3"
  puts "Think of a number, and I will compute the product of all the numbers that come before it: "
  userInput = gets.chomp # leaving this var inact so I can refer to original number
  userNum = userInput.to_i
  product = 1

  while userNum >= 1 do
    product *= userNum
    userNum -= 1 
  end

  puts "The product of all of the numbers from 1 to #{userInput} is #{product}."

# USER SELECTION 4 - TIMES TABLE
elsif userChoice == "4"
  xAxis = 1
  yAxis = 1
  product = 1
  tableWidth = 12*4+4 # width of table times rjust(4) plus row spacing
  print "X |".rjust(4)

  loop do
    print "#{xAxis}".rjust(4)
    xAxis += 1
    if xAxis == 13
      break
    end
  end

  print "\n"
  tableWidth.times {print "="}
  print "\n"

  xAxis = 1 # reseting xAxis to one after writing column headers

  while yAxis <= 12 do
    print "#{yAxis} |".rjust(4)
    while xAxis <= 12 do
      product = xAxis * yAxis
      print "#{product}".rjust(4)
      xAxis += 1
    end
    xAxis = 1
    yAxis += 1
    print "\n"
  end


# USER CHOICE #5 - LIST ALL PRIME NUMBERS
elsif userChoice == '5'
  puts "lol developing tomorrow"

# if user doesn't choose one of the number selections
else
  puts "I am filled with an emotion that I perceive to be... perturbed."
end

puts "Good bye."


