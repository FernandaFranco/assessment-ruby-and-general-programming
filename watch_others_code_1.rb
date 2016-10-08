# def is_prime?(integer)
#   return false if integer < 2
#   (2...integer).each do |number|
#     return false if integer % number == 0
#   end
#   true
# end

# p is_prime?(24)
# p is_prime?(3)

# def select_primes(array)
#   array.select do |number|
#     is_prime?(number)
#   end
# end

# p select_primes([1,2,3,4])
# p select_primes([4,6,8,10])

# def count_primes(array)
#   select_primes(array).count
# end

#   p count_primes([1,2,3,4])
#   p count_primes([4,6,8,10])

# def prompt(message)
#   puts ">> #{message}"
# end

# prompt "Please enter an integer greater than 0:"
# integer = gets.chomp.to_i

# prompt "Enter 's' to compute the sum, 'p' to computer the product:"
# choice = gets.chomp.downcase

# if choice == 's'
#   sum = (1..integer).reduce(:+)
#   prompt "The sum of the integers between 1 and #{integer} is #{sum}"
# else
#   product = (1..integer).reduce(:*)
#   prompt "The product of the integers between 1 and #{integer} is #{product}"
# end

# BEGINNING AGAIN

#1a

# def is_prime?(integer)
#   return false if integer == 1
#   (2...integer).each do |number|
#     return false if integer % number == 0
#   end
#   true
# end

# p is_prime?(3)
# p is_prime?(4)

# def select_primes(array)
#   array.select do |element|
#     is_prime?(element)
#   end
# end

# p select_primes([1,2,3,4])
# p select_primes([4,6,8,10])

# def count_primes(array)
#   select_primes(array).count
# end

# p count_primes([1,2,3,4])
# p count_primes([4,6,8,10])

# def prompt(message)
#   puts ">> #{message}"
# end

# prompt "Please enter an integer greater than 0:"
# integer = gets.chomp.to_i

# prompt "Enter 's' to compute the sum, 'p' to compute the product:"
# choice = gets.chomp.downcase

# sum = (1..integer).reduce(:+)
# product = (1..integer).reduce(:*)

# if choice == 's'
#   prompt "The sum of all numbers between 1 and #{integer} is #{sum}."
# else
#   prompt "The product of all numbers between 1 and #{integer} is #{product}."
# end

def interleave(array_1, array_2)
  # new_array = array_1.map.with_index do |value, index|
  #   [value, array_2[index]]
  # end
  # new_array.flatten
  array_1.zip(array_2).flatten
end

p interleave([1,2,3], ['a', 'b', 'c'])