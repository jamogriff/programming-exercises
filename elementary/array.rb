
=begin
Getting started with arrays to implement Sieve of Eratosthenes...

I took this code straight from Logan Hasson's excellent gist: https://gist.github.com/loganhasson/8937903
I intend to refine this code a bit further and make it my own...
=end

puts "Enter the upper limit to find all of the prime numbers less than it: "
userInput = gets.chomp
num = Integer(userInput)

primes = (0..num).to_a

primes[0] = primes[1] = nil

counter = 0
primes.each do |p|
  next unless p

  break if p*p > num
  counter +=
  (p*p).step(num,p) { |m| primes[m] = nil }
end

puts "Solved for #{num} in #{counter} steps."
puts primes.compact


=begin
while num > 2 do
  if num.is_even?
    num -= 1
  
  else
=end
