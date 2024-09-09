# Write a method that takes two parameters, payload and target. The playload should be an array or unique integer values(positive, negative, or 0). The target should be an integer(positive, negative, or 0).Your method/function should search through the payload to find any two numbers that add together to equal the target value.

# When you find a pair of numbers that add up to your target value, you can stop processing/searching and return an array of those two values. If no values are found return an empty array.

# Be careful that you don’t find the same number twice in your payload; for example if your payload contains a 4 and your target is 8, your answer should not indicate that it found 4 twice.

# Example

#     #Ruby
#     find_target([1, 3, 4, 5, 10], 15)
#     => [5, 10]
#     find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
#     => [-3, 18]
#     find_target([-3, -34, 2, 6, 40, -4], 1)
#     => []
#     

def find_target(payload, target)
  payload.each_with_index do |num, index|
    payload.each_with_index do |num2, index2|
      if num + num2 == target && index != index2
        return [num, num2]
      end
    end
  end
  return []
end

print find_target([1, 3, 4, 5, 10], 15)
puts " "
print find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
puts " "
print find_target([-3, -34, 2, 6, 40, -4], 1)
