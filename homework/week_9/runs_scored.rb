# sammy = [134, 114, 106, 146, 122]
# albert = [112, 118, 137, 133, 129]

def get_runs(player)
    puts "Enter the runs for #{player} and type an empty line when done."
    total = 0
    while true
        runs = gets.chomp
        if runs == ""
            break
        end
        total += runs.to_i
    end
    total
end

sammy = get_runs("Sammy")
albert = get_runs("Albert")

sammy_percentage = (sammy.to_f / (sammy + albert)) * 100
albert_percentage = (albert.to_f / (sammy + albert)) * 100


if sammy_percentage > albert_percentage
    percentage = sammy_percentage
    player = "Sammy"
else
    percentage = albert_percentage
    player = "Albert"
end


puts "#{player} had the most runs scored with #{percentage}% of the total."