puts "Hello, world"

puts "Type in your name: "
userName = gets.chomp

if userName == "Bob" or userName == "Alice"
  puts "Hello, #{userName}"

else
  puts "Cool."
  end

puts "Think of a number, and I will add all the numbers that come before it: "
userInput = gets.chomp # leaving this var inact so I can refer to original number
userNum = userInput.to_i
sum = 0

while userNum >= 1 do
  sum += userNum
  userNum -= 1 
end

puts "The sum of all of the numbers from 1 to #{userInput} is #{sum}." 
