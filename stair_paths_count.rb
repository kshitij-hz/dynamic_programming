def paths_count(stair_count, steps, ques_bank = {})
  if stair_count.zero?
    return 1
  elsif stair_count.negative?
    return 0
  end      
  ques_bank[stair_count] ||= steps.sum { |step| paths_count(stair_count - step, steps, ques_bank) }
end

STDOUT.print 'Enter number of stairs: '
stair_count = STDIN.gets.to_i
STDOUT.print 'Steps a person can take (1,2,3): '
steps = STDIN.gets.split(',').map(&:to_i)
puts steps.inspect
if !steps.all?(&:positive?)
  puts "Wrong steps"
  exit(1) 
end

puts paths_count(stair_count, steps)
