TRANSLATION = {
  "zero" => 0,
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "ten" => 10
}

# def computer(english)
#   words = english.split
#   numbers_as_strings = words.select.with_index do |_, index|
#     index.even?
#   end
#   numbers = numbers_as_strings.map do |number|
#     TRANSLATION[number]
#   end
#   operations = words.select.with_index do |_, index|
#     index.odd?
#   end
#   new_array = numbers
#   operations.each do |operation|
#     result = case operation
#              when "plus"
#                numbers[0] + numbers[1]
#              when "minus"
#                numbers[0] - numbers[1]
#              end
#     new_array.shift(2)
#     new_array.unshift(result)
#   end
#   new_array[0]
# end

def computer(english)
end

p computer("two plus two")
p computer("seven minus six")
p computer("zero plus eight")

p computer("two plus two minus three")
p computer("three minus one plus five minus four plus six plus ten minus four")