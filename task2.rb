# 2
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі ваш вік.
# Після цього, вивести в консоль, через скількі років вам буде 100 (Текст можете придумати самі)

puts "How old are you?"
age = gets.chomp
result = 100 - age.to_i
puts "You will be 100 years old in #{result} years."
