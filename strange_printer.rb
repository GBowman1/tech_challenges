def array_to_string(array)
  num = array.join('').to_i
  new = num + 1
  new.to_s.split('').map(&:to_i)
end

puts array_to_string([1, 2, 3]) == [1, 2, 4]