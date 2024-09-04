def factorial(num)
  return 1 if num == 0
  num * factorial(num - 1)
end

puts factorial(5)

def reverse(str)
  if str.length == 1
    return str
  else
    return str[-1] + reverse(str[0...-1])
  end
end

puts reverse('hello')