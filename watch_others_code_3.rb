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
  "nine" => 9
}

def computer(english)
  numbers = [english.split[0], english.split[2]].map do |number|
    TRANSLATION[number]
  end
  case english.split[1]
  when "plus"
    numbers.reduce(:+)
  when "minus"
    numbers.reduce(:-)
  end
end

p computer("two plus two")
p computer("seven minus six")
p computer("zero plus eight")