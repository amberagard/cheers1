# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”

# P.S.: name.methods - Object.methods

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
