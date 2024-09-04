def char_counter(string)
  count = {}
  string.each_char do |char|
    count[char] = 0 if count[char].nil?
    count[char] += 1
  end
  count = count.sort_by { |key, value| key }
  count.each do |key, value|
    puts "#{key}: #{value}"
  end
end
# char_counter("aaabbc")
char_counter("I really want to work for Wingspan")
