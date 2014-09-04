puts 'Give me your grades, one at a time. Type \'done\' when you are done.'


# an array to keep all the grades
grades = [] #grades = Array.new

# keep getting grades until user enters 'done'
while true
    grade = gets.chomp
    if (grade.downcase == 'done')
        exit
    else
        grades.push(grade.to_i)
    end
end

total_points = 0
grades.each do |grade|
    total_points = total_points + grade
end

puts 'my average = ' + (total_points / grade.size).to_s