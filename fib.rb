def printer(num)
  base = 0
  next_num = 1
  num.times do 
    puts base
    base, next_num = next_num, base + next_num
    require 'prime'
    if Prime.prime?(base)
      puts "#{base} is a prime number"
    end
  end
end
printer(25)