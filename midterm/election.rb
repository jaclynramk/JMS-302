nunn_votes = []

puts "Type in the amount of votes for each precinct for Michelle Nunn. Type 'done' when you are     done."

while true
    answer = gets.chomp
    if answer != 'done'
        nunn_votes.push answer.to_i
    else break
    end
end


perdue_votes = []

puts "Type in the amount of votes for each precinct for David Perdue. Type 'done' when you are     done."

while true
    answer = gets.chomp
    if answer != 'done'
        perdue_votes.push answer.to_i
    else break
    end
end

def get_results(nunn_votes, perdue_votes)
    nunn_votes.each do |x|
        sum1 = 0
        total_nunn = sum1 += x
    perdue_votes.each do |x|
        sum2 = 0
        total_perdue = sum2 += x
    total_votes = total_nunn + total_perdue
    nunn_percentage = (total_nunn / total_votes) * 100
    perdue_percentage = (total_perdue / total_votes) * 100
end
    
puts get_results
    
puts "Michelle Nunn has #{nunn_percentage} of the votes. David Perdue has #{perdue_percentage} of the votes."