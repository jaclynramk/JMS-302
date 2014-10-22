file = "restaurants.txt"

unless File.exists? file
    puts "#{file} doesn't exist"
    exit
end

File.open(file)

puts "Add restaurants to this list by entering a name on each new line. Type an empty line when done, or if you don't want to add new restaurants."

File.open(file, "a")