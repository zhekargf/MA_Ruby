array = ['(', '{', '[', '<', ')', '}', ']', '>']
puts 'Please enter a string.'
input = gets.chomp
array.each do |e|
  puts true if e.include?(input)
end