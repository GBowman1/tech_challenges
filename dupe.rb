# O(n^2)
def find_duplicate(arr)
  arr.each do |num|
    return num if arr.count(num) == 2
  end
end

# o(n)
def find_dupe(arr)
  tallied = arr.tally
  tallied.select do |k, v|
    return k if v == 2
  end
end

# O(n log n)
def find_duplicate_binary_search(arr)
  low = 1
  high = arr.length - 1

  while low < high
    mid = (low + high) / 2
    count = arr.count { |num| num <= mid }

    if count > mid
      high = mid
    else
      low = mid + 1
    end
  end

  low
end

# o(log n)
def find_duplicate_n_log_n(arr)
  sorted_arr = arr.sort
  (0...sorted_arr.length - 1).each do |i|
    return sorted_arr[i] if sorted_arr[i] == sorted_arr[i + 1]
  end
  nil
end

# O(n)
def find_duplicate_o_1(arr)
  tortoise = arr[0]
  hare = arr[0]

  loop do
    tortoise = arr[tortoise]
    hare = arr[arr[hare]]
    break if tortoise == hare
  end

  tortoise = arr[0]
  while tortoise != hare
    tortoise = arr[tortoise]
    hare = arr[hare]
  end

  hare
end

big_arr = (1..1000000).to_a
big_arr << 6900

methods = [
  { name: "find_duplicate", big_o: "O(n^2)", method: method(:find_duplicate) },
  { name: "find_dupe", big_o: "O(n)", method: method(:find_dupe) },
  { name: "find_duplicate_binary_search", big_o: "O(log n)", method: method(:find_duplicate_binary_search) },
  { name: "find_duplicate_n_log_n", big_o: "O(n log n)", method: method(:find_duplicate_n_log_n) },
  { name: "find_duplicate_o_1", big_o: "O(1)", method: method(:find_duplicate_o_1) }
]

results = methods.map do |m|
  start_time = Time.now
  result = m[:method].call(big_arr)
  end_time = Time.now
  execution_time = end_time - start_time
  { name: m[:name], big_o: m[:big_o], result: result, execution_time: execution_time }
end

sorted_results = results.sort_by { |r| r[:execution_time] }

sorted_results.each do |r|
  puts "----------------------------------"
  puts "#{r[:result]} #{r[:name]} - #{r[:big_o]}"
  puts "Execution time: #{r[:execution_time]} seconds"
  puts "----------------------------------"
end

# big_arr = (1..1000000).to_a
# big_arr << 2250

# start_time = Time.now
# result = find_duplicate(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "----------------------------------"
# puts "#{result} method 1 - O(n^2)"
# puts "Execution time: #{execution_time} seconds"
# puts "----------------------------------"

# start_time = Time.now
# result = find_dupe(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "#{result} method 2 - O(n)"
# puts "Execution time: #{execution_time} seconds"
# puts "----------------------------------"

# start_time = Time.now
# result = find_duplicate_binary_search(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "#{result} method 3 O(log n)"
# puts "Execution time: #{execution_time} seconds"
# puts "----------------------------------"

# start_time = Time.now
# result = find_duplicate_n_log_n(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "#{result} method 3 O(n log n)"
# puts "Execution time: #{execution_time} seconds"
# puts "----------------------------------"

# start_time = Time.now
# result = find_duplicate_o_n(big_arr)
# end_time = Time.now
# execution_time = end_time - start_time

# puts "----------------------------------"
# puts "#{result} method 4 - O(n)"
# puts "Execution time: #{execution_time} seconds"
# puts "----------------------------------"