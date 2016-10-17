# def word_cap(string)
#   words_capitalized = string.split.map do |word|
#     word[0].upcase + word[1..-1]
#   end
#   words_capitalized.join(" ")
# end

# p word_cap('four score and seven') #== "Four Score And Seven"
# p word_cap('the javaScript language') #== "The JavaScript Language"
# p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
# p word_cap('pope')


# require 'date'

# def friday_13th?(year)
#   date = Date.new(year, 1, 13)
#   fridays_13th = 0
#   while date.year == year
#     fridays_13th +=1 if date.friday?
#     date = date >> 1
#   end
#   fridays_13th
# end

# p friday_13th?(2015)
# p friday_13th?(1986)

NUMBERS = %W(zero one two three four five six seven eight nine ten)
OPERATORS = %W(plus minus times divided)

# def mathphrase(length)
  # sentence_array = []
  # length.times do
  #   sentence_array << NUMBERS.sample
  #   sentence_array << OPERATORS.sample
  # end
  # sentence_array << NUMBERS.sample
  # sentence_array.join(" ").gsub("divided", "divided by")
# end

# def mathphrase(length)
#   op = OPERATORS.sample(length)
#   num = NUMBERS.sample(length + 1)

#   num.zip(op).join(" ")[0...-1].gsub("divided", "divided by")
# end


# p mathphrase(1)
# p mathphrase(2)
# p mathphrase(3)

def mathphrase
  p length = (1..20).to_a.sample
  sentence_array = []
  length.times do
    sentence_array << NUMBERS.sample
    sentence_array << OPERATORS.sample
  end
  sentence_array << NUMBERS.sample
  sentence_array.join(" ").gsub("divided", "divided by")
end

10.times do
  p mathphrase
end