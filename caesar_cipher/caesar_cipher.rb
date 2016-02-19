puts "Enter a string: "
user_string = gets.chomp

puts "Enter a number: "
shift = gets.chomp

# user_string_letters = user_string.split


# puts "Enter a number to cypher by:"
# cypher_integer = gets

# puts user_string_letters.pop(1)

# # Array.('a'..'z') = alphabet

# # puts alphabet.shift(100)
# puts alphabet

# print user_string.downcase * 5

def caesar_cipher(user_string, shift)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  user_string.chars.map { |c| encrypter.fetch(c, " ") }
end

# p caesar_cipher("testing").join
p caesar_cipher(user_string, shift)