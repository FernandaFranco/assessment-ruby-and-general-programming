def substring(string, start, finish = start)
  substring = []
  (start..finish).each do |index|
    substring << string[index]
  end
  substring.join
end

def substring(string, start, finish = start)
  string.chars.select.with_index { |char, index| (start..finish).include?(index) }.join
end

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"

# def substrings(string)
#   array = []
#   (string.length - 1).times do |index|
#     add = 1
#     while index + add <= string.length - 1
#       array << substring(string, index, index + add)
#       add += 1
#     end
#   end
#   array
# end

def substrings(string)
  array = []
  (0...string.length - 1).each do |start|
    (start + 1...string.length).each do |finish|
      array << substring(string, start, finish)
    end
  end
  array
end

p substrings("band")
p substrings("world")
p substrings("ppop")