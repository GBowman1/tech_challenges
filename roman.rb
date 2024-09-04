# Your goal is to write a method/function that converts an integer into a string such that the number is represented in Roman Numerals in the most efficient way.

# For example, the number 4 could be written as IIII but it’s more efficient to use IV since that’s a shorter string.

# Assume no number is greater than 4,000.

# Here are the Roman Numeral equivalents you’ll need to know:

# M=1000
# CM=900
# D=500
# CD=400
# C=100
# XC=90
# L=50
# XL=40
# X=10
# IX=9
# V=5
# IV=4
# I=1

#Ruby
  # to_roman(128)
  # => "CXXVIII"
  # to_roman(2000)
  # => "MM"


# def to_roman(num)
#   roman = []
#   arr = num.to_s.split("")
#   if arr.length >= 4
#     value = arr[0].to_i
#     value.times do |v|
#       roman << "M"
#     end
#     hundreds = arr[1].to_i
#     hundreds.times do |h|
#       roman << "C"
#     end
#     tens = arr[2].to_i
#     tens.times do |t|
#       roman << "X"
#     end
#   end
#   roman.join("")
# end
# 
def to_roman(num) # num is 5
  roman_mapping = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
    100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV",
    1 => "I"
  }

  roman = ""
  roman_mapping.each do |key, letter|
    while num >= key
      roman += letter
      puts "adding #{letter} to string"
      puts "subtracting #{key}"
      num -= key
      puts num
      puts "------------"
    end
  end
  roman
end

puts to_roman(1356)

