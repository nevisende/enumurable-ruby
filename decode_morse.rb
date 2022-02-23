def decode_char(char)
  morse_chars = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_chars[char]
end

puts decode_char('.-')
# A

def decode_word(word)
  decoded_word = []
  char = word.split
  char.each do |i|
    decoded_word << decode_char(i)
  end
  decoded_word = decoded_word.join
end

puts decode_word('-- -.--')
# MY

def decode(message)
  decoded_message = []
  word = message.split('   ')
  word.each do |w|
    decoded_message << decode_word(w)
  end
  puts decoded_message = decoded_message.join(' ')
end

decode('-- -.--   -. .- -- .')
# MY NAME
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ... ')
# A BOX FULL OF RUBIES
