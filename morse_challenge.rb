def decode_char(char)
  morse_code = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                 '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M',
                 '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
                 '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }
  morse_code[char] || '[UNKNOWN]'
end

def decode_word(word)
  decoded_letters = word.split.map { |letter| decode_char(letter) }
  decoded_letters.join
end

def decode_sentence(sentence)
  words = sentence.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

puts decode_char('--')
puts decode_word('-- -.--   -. .- -- .')
puts decode_sentence('-- -.--     -. .- -- .')
