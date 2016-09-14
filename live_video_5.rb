# def remove_vowels(strings)
#   strings.map do |string|
#     letters = string.split('')
#     letters.delete_if do |letter| 
#       %(a e i o u).include?(letter)
#     end
#     letters.join('')
#   end
# end

# array = ["green", "yellow", "black", "white"]
# p remove_vowels(array)

# def balancer(string)
#   chars = string.split('')
#   chars.count('(') == 0 && chars.count(')') == 0 ||
#   chars.count('(') == chars.count(')') &&
#   chars.rindex('(') < chars.index(')')
# end

# p balancer('hi')
# p balancer('(hi')
# p balancer('(hi)')
# p balancer(')hi(')
# p balancer('(h(i))')
# p balancer('(h(i)')

# def balancer(string)
#   chars = string.split('')
#   counter = 0
#   chars.each do |char|
#     counter += 1 if char == '('
#     counter -= 1 if char == ')'
#     return false if counter < 0
#   end
#   if counter > 0
#     false
#   else
#     true
#   end
# end

# p balancer('hi')
# p balancer('(hi')
# p balancer('(hi)')
# p balancer(')hi(')
# p balancer('(h(i))')
# p balancer('(h(i)')
# p balancer('(hi))(()')

def is_prime?(number)
  remainders = (2...number).map { |d| number % d}
  !remainders.include?(0) && number > 1
end

def find_primes(number_1, number_2)
  (number_1..number_2).select do |number|
    is_prime?(number)
  end
end

p find_primes(-10, 24)