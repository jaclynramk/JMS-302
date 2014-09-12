# Jaclyn
puts 'Hello, what is your first name?'
first = gets.chomp
if first == 'Jaclyn'
    puts 'What a lovely first name!'
    else puts 'Meh. Your name is alright.'
end
puts 'What is your middle name?'
middle = gets.chomp
puts 'What is your last name?'
last = gets.chomp
puts 'Your full name is ' + first  + ' ' + middle  + ' ' + last
puts 'There are ' + (first.length + middle.length + last.length).to_s + ' letters in your name.'
puts 'Your name backwards is ' + last.reverse + ' ' + middle.reverse + ' ' + first.reverse
