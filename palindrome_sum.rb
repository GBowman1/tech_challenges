# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.

# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.

# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

def palindrome_sum
  num = 0
  palindromes = []

  until palindromes.length == 25
    inverse_num = num.to_s.reverse.to_i
    sum = num + inverse_num
    if sum.to_s == sum.to_s.reverse && sum > 1000
      palindromes << num 
    end
    num += 1
  end
  return palindromes 
end

print palindrome_sum
