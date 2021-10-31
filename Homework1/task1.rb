# 1
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі назву тварини.
# Після цього, вивести в консоль наступний текст I like _animal_, де замість _animal_ повинно бути значення отримане з консолі

puts "What is your favourite animal?"
_animal_ = gets.chomp.downcase
puts "I like #{_animal_}."