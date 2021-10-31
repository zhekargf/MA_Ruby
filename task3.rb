# 3
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі список з трьох хоббі та записати їх в змінну
# Приклад вводу: 
# 'football, programming, hiking'
# Після цього, потрібно обрати випадкове хоббі та вивести в консоль наступний текст Tell me something about _random_hobby_
# де замість _random_hobby_ повинно бути випадкове хоббі

puts "Please name three of your hobbies."
array = gets.chomp.split
_random_hobby_ = array[rand(array.length)] 
puts "Tell me something about #{_random_hobby_}."