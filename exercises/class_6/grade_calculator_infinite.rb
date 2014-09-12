# Jaclyn
puts 'Give me one of your grades.'

grades = []

grade1 = gets.chomp
grades.push(grade1.to_i)

puts 'Give me a second grade.'

grade2 = gets.chomp
grades.push(grade2.to_i)

puts 'Give me a third grade.'

grade3 = gets.chomp
grades.push(grade3.to_i)

puts 'Give me a fourth grade.'

grade4 = gets.chomp
grades.push(grade4.to_i)

puts 'Give me a fifth grade.'

grade5 = gets.chomp
grades.push(grade5.to_i)

average1 = ((grades[0] + grades[1]) / 2).to_i
average2 = ((grades[2] + grades[3] + grades[4]) / 3).to_i

puts 'Your average is ' + (((0.5 * average1).to_i) + ((0.5 * average2).to_i)).to_s + '.'
