=begin
This program is designed to take user-input and output a multiplication table.

The height and width of this table is set by the user and is currently able to
compute and correctly format a 32x32 times table.

=end

# Program header
64.times {print "-"}
print "\n"
puts "CREATE YOUR OWN MULTIPLICATION TABLE".center(64)
puts "Created by jgriffith.me".center(64)
64.times {print "-"}

# User prompt
print "\n"
puts "This program creates a multiplication table up to 32x32."
print "\n"
puts "Type a number between 1 and 32 to create your multiplication table: "
userChoice = gets.chomp
userInt = Integer(userChoice) # Integer method raises ArgumentError if a number isn't chosen

# Checking range of user input, setting variables and writing column headers
if userInt <= 32 and userInt != 0 

xAxis = 1
yAxis = 1
product = 1
tableWidth = userInt*4+4 # width of table times rjust(4) plus row spacing
print "x |".rjust(4)

loop do
  print "#{xAxis}".rjust(4)
  xAxis += 1
  if xAxis == userInt + 1
    break
  end
end

print "\n"
tableWidth.times {print "-"}
print "\n"

xAxis = 1 # reseting xAxis to one after writing column headers

# every time yAxis increases, the nested loop iterates through xAxis and prints the product
while yAxis <= userInt do
  print "#{yAxis} |".rjust(4) # prints row header
  while xAxis <= userInt do
    product = xAxis * yAxis
    print "#{product}".rjust(4)
    xAxis += 1
  end
  xAxis = 1 # resets x axis number back to one prior to next row of computation
  yAxis += 1
  print "\n"
end

# if user selects a number greater than 32
else
  puts "Next time please select a number between 1 and 32."
end

