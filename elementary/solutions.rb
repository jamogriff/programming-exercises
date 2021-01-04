puts "Hello, world! To whom am I speaking to?"
userName = gets.chomp

if userName == "Kelsie" or userName == "Kels"
  puts "What a beautiful name.... #{userName}."

else
  puts "Nice to meet you, #{userName}."
end

print "\n"
# Start of main function selection
puts "I have multiple functions. Please select one to continue: "
puts "  1 - Compute sum of numbers divisible by 3 or 5 from 1 to n."
puts "  2 - Compute sum of numbers from 1 to n."
puts "  3 - Compute product of numbers from 1 to n."
puts "  4 - Display 12x12 Times Table."
puts "  5 - List prime numbers."
puts "  6 - List current date and next upcoming leap years"
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
  puts "Think of a number, and I will compute all of the prime numbers that come before it:  "
  userInput = gets.chomp # leaving this var inact so I can refer to original number
  userNum = Integer(userInput)

  # Fun Fact: This algorithm is known as the Sieve of Eratosthenes.
  def sieve(max)
    primes = (0..max).to_a

    primes[0] = primes[1] = nil # getting 0 and 1 out of the way

    primes.each do |p|
    # skip item if nil
      next unless p

      break if p*p > max # break loop if a perfect square exceeds max value

      # as we iterate through numbers, we square the value (e.g. 3*3)
      # then skip through the array by the value of p (i.e. by multiples of p).
      # Each multiple of p is assigned nil, and thus removed from the array.
      (p*p).step(max,p) {|m| primes[m] = nil}
    end

    primes.compact # compact method removes all of the nil entries
  end
  
  puts "The following numbers are all of the prime numbers less than #{userInput}:"
  puts sieve(userNum)
  puts "Math is sweet!!!"

# USER SELECTION #6 - LEAP YEARS
elsif userChoice == '6'
=begin
A common bug in programming is the leap year bug, in which a program cannot
handle or anticipate the date of February 29th. This program implements a basic
algorithm to list out the next 20 leap years.

Basic Ruby Concepts: This code uses the Time class to return objects like date, year, and time.
Some basic methods of Time include .now .day .month and .year.

The .strftime method is a very useful method for formatting Time objects...
the following is a cheatsheet for the formats we can use with strftime:
  %d = day of the month (01..31) or use $-d for (1..31)
  %m = month of the year (01..12) or use $-m for (1..12)
  %k = hour (0..23)
  %M = minutes
  %S = seconds (00..60)
  %l = hour (1..12)
  %p = AM/PM
  %Y = year
  %A = day of the week (name)
  %B = month (name)
=end

  time = Time.now
  #puts "Today's date is #{time.day} of #{time.month} of the year #{time.year}"
  puts time.strftime("It is currently %l:%M %p on %A, %B %-d, %Y")

# if user doesn't choose one of the number selections
else
  puts "I am filled with an emotion that I perceive to be... perturbed."
end

puts "Good bye."


