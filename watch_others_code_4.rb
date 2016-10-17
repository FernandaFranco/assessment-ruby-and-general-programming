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


require 'date'

def friday_13th?(year)
  date = Date.new(year)
  fridays_13th = []
  while date.year == year
     fridays_13th << date if date.friday? && date.mday == 13
    date += 1
  end
  fridays_13th.size
end

p friday_13th?(2015)
p friday_13th?(1986)