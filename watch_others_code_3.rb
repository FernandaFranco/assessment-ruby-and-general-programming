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
  TRANSLATION.each do |word, num|
    english.gsub!(word, num.to_s)
  end
  english.gsub!("by ", "")

  english_array = english.split

  result = 0

  pointer = 0
  while (pointer + 2) + 1 <= english_array.size 
    expression = english_array[pointer..(pointer+2)]
    case expression[1]
    when "plus", "minus"
      pointer += 2
      next
    when "times"
      result = expression.first.to_i * expression.last.to_i
    when "divided"
      result = expression.first.to_i / expression.last.to_i
    end
    english.gsub!(expression.join(" "), result.to_s)
    english_array = english.split
  end

  while english_array.size >= 3
    expression = english_array[0..2]
    result = case expression[1]
             when "plus"
               expression.first.to_i + expression.last.to_i
             when "minus"
               expression.first.to_i - expression.last.to_i
             end
    english_array.shift(3)
    english_array.unshift(result)
  end
  result
 end

# p computer("two plus two")
# p computer("seven minus six")
# p computer("zero plus eight")

# p computer("two plus two minus three")
# p computer("three minus one plus five minus four plus six plus ten minus four")

p computer("eight times four plus six divided by two minus two") 
p computer("one plus four times two minus two") 
p computer("nine divided by three times six")
p computer("seven plus four divided by two")
p computer("seven times four plus one divided by three minus two")
p computer("one plus four times three divided by two minus two")
p computer("nine divided by three times six")
