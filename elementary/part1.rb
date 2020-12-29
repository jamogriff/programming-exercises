puts "Hello, world"

puts "Type in your name: "
userName = gets.chomp

if userName == "Bob" or userName == "Alice"
  puts "Hello, #{userName}"

else
  puts "Cool."
  end

# Start of main function selection
puts "This program has multiple functions. Please select one to continue: "
puts "  1 - Sum of numbers divisible by 3 or 5 from 1 to n."
puts "  2 - Sum of numbers from 1 to n."
puts "  3 - Product of numbers from 1 to n."
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
end

# USER SELECTION 2 - SUM OF NUMBERS 
if userChoice == "2"
  puts "Think of a number, and I will add all the numbers that come before it: "
  userInput = gets.chomp # leaving this var inact so I can refer to original number
  userNum = userInput.to_i
  sum = 0

  while userNum >= 1 do
    sum += userNum
    userNum -= 1 
  end

  puts "The sum of all of the numbers from 1 to #{userInput} is #{sum}."
end

# USER SELECTION 3 - PRODUCT OF NUMBERS
if userChoice == "3"
  puts "Think of a number, and I will compute the product of all the numbers that come before it: "
  userInput = gets.chomp # leaving this var inact so I can refer to original number
  userNum = userInput.to_i
  product = 1

  while userNum >= 1 do
    product *= userNum
    userNum -= 1 
  end

  puts "The product of all of the numbers from 1 to #{userInput} is #{product}."
end


