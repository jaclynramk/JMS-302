# TODO: make this a parameter in the command line
file = "ebola_message_guidelines.txt"

unless File.exists? file
    puts "#{file} doesn't exist"
    exit
end

word_counts = Hash.new(0)

File.open(file, "r").each_line do |line|
    words = line.chomp.split(/\W+/)
    words.each do |word|
        word_counts[word] += 1
    end
end

File.open("count-#{file}", "w") do |f|
    #f.write word_counts
    word_counts.sort_by { |_key, value| value}.each do |word, count|
        f.write "#{word} = #{count}\n"
    end
end