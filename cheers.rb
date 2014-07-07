puts "What's your name?"
name = gets.chomp
if name.empty?
  puts "You must enter your name!"
  exit
end
name.each_char do |char|
  if char.start_with?("A", "a", "E", "e", "I", "i", "O", "o", "U", "u")
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end
puts name.upcase + "'s just GRAND!"
puts "Hey, " + name + ", what's your birthday? (YYYY/MM/DD)"
birthday = gets.chomp
year, month, day = birthday.split("/")
t = Time.now
t2 = Time.new(Time.now.year, month, day)
days = ((t2 - t) / 60 / 60 / 24).to_i
if days < 0
  days += 365
end
if days == 0
  puts "Happy Birthday!"
else
  puts "Awesome! Your birthday is in #{days} days! Happy Birthday in advance!"
end
