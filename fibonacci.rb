def fibonacci(num, ques_bank = {})
  if num < 2
    return num
  elsif ques_bank[num]
    return ques_bank[num]
  end
  puts "Hello #{num}"
  res = fibonacci(num - 1, ques_bank) + fibonacci(num - 2, ques_bank)
  ques_bank[num] = res
  res
end

def fibonacci2(num, ques_bank = {})
  return num if num < 2
  first = 0
  second = 1
  (num - 1).times do |i|
    puts "hello #{i + 1}"
    fib = first + second
    first = second
    second = fib
  end
  second
end

STDOUT.print 'Enter fibonacci number : '
num = STDIN.gets.to_i
puts fibonacci(num)
puts "\n\n\nfibonacci2"
puts fibonacci2(num)
