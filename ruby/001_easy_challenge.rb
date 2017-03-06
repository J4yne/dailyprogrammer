# Reddit /r/dailyprogramer [easy] challenge #1
# https://redd.it/pih8x

# get users name, age, and redit username
puts "Your name?"
name = gets.chomp
puts "Your age?"
age = gets.chomp
puts "Your reddit username?"
user = gets.chomp

# print out info
puts "Your name is #{name}, you are #{age} years old, and your username is #{user}."

# extra credit: save info in a file
File.open("userinfo.txt", "a+") do |file|
  file.puts "#{name}|#{age}|#{user}\n"
end

