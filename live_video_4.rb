# def string_reverser(string)
#   reversed_array = []
#   string.split("").each do |letter|
#     reversed_array.unshift(letter)
#   end
#   reversed_array.join("")
# end

# puts string_reverser("hello world")

# def fizzbuzz(first, last)
#   range = (first..last)
#   array = []
#   range.each do |number|
#     array << case
#              when number % 3 == 0 && number % 5 == 0
#                "FizzBuzz"
#              when number % 3 == 0
#                "Fizz"
#              when number % 5 == 0
#                "Buzz"
#              else
#                number
#              end
#   end
#   array.join(', ')
# end

# puts fizzbuzz(1,15)

require 'pry'

def search(query)
  PRODUCTS.select do |computer|
    computer[:name].downcase.split(" ").include?(query[:q]) && 
    computer[:price] >= query[:price_min] && 
    computer[:price] <= query[:price_max]
    binding.pry
  end
end

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

PRODUCTS = [
  {name: "Dell Inspiron", price: 450}
]

puts search(query2)
