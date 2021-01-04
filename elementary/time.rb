=begin
A common bug in programming is the leap year bug, in which a program cannot
handle or anticipate the date of February 29th. This program implements a basic
algorithm to list out the next 400 years and notes which is a leap year. 
Note: Leap years are not just every 4 years, on the time scale of hundreds of years
there needs to be some readjustment to make it work.

From Wikipedia:
  "Every year that is exactly divisible by four is a leap year, except for years that are
  exactly divisible by 100, but these centurial years are leap years if they are exactly
  divisible by 400. For example, the years 1700, 1800, and 1900 are not leap years,
  but the years 1600 and 2000 are."

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
  %s = Unix time
=end
  
  puts "Time is an interesting construct..."
  time = Time.now
  puts time.strftime("For example, the time as I know it is %s...")
  puts time.strftime("... but for users of the Gregorian calendar it's currently %l:%M %p on %A, %B %-d, %Y.")
  print "\n"
  puts "Did you know that leap years occur *roughly* every 4 years? Each year consisting of 365.25 days is just a convienent approximation."
  puts "Because of this approximation, interesting \"readjustments\" have to be made when the centuries pass."

  year = time.year
  futureYear = year + 400
  puts "Guess how many leap years occur during the 400 year period between #{year} and #{futureYear}:"
  guess = Integer(gets.chomp) # user enters in their guess and gets turned into an integer

  # this function follows the format outlined above
  # Namely, if a given year (current) is not evenly divided by 4
  # it is counted as a common year. If a year is evenly divided by 100
  # and not evenly divided by 400 then it is also a common year.
  # All other cases (e.g. divided by 4 or 400) results in a leap year.
  def count_leap_years(current, future)
    common = 0
    leap = 0
    while current <= future do
      if current % 4 != 0
        common += 1
      elsif current % 100 == 0 and current % 400 != 0
        common += 1
      else
        leap += 1
      end
    current += 1
    end
    leap
  end

leapYears = count_leap_years(year, futureYear) # just setting up a variable to reference the function

  # this function utilizes the same algorithm above, but lists out the years
  # instead of counting. If we were to utilize an array for the years, then
  # we could be more efficient...
  def list_leap_years(current, future)
    while current <= future do
      if current % 4 != 0
        puts "#{current} is a common year."
      elsif current % 100 == 0 and current % 400 != 0
        puts "#{current} is a common year."
      else
        puts "#{current} is a leap year!!!"
      end
    current += 1
    end
  end

  if guess < leapYears 
    puts "It's actually more than #{guess}. "
  elsif guess > leapYears
    puts "It's actually less than #{guess}. "
  else guess == leapYears
    puts "That's correct! "
  end

  print " There are #{leapYears} from now until #{futureYear}."
  puts "This is due to what's known as a leap cycle. From Wikipedia: "
  puts "Over a period of four centuries, the accumulated error of adding a leap day every four years
amounts to about three extra days. The Gregorian calendar therefore drops three leap days every 400 years,
which is the length of its leap cycle."
  print "\n"
  puts "If you would like to visualize this (hint: look at years 2100, 2200, 2300 and 2400) press any key and hit enter,
otherwise type exit and hit enter to end the program."
  userDecision = gets.chomp

  unless userDecision == "exit"
    list_leap_years(year, futureYear)
  else
    exit
  end

