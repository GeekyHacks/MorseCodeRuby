def decode(string)
  morse_code = {'.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',}

  stringed = string.split(" ")
  morse_code_array = []
  i = 0
  while i < stringed.length
    letter = stringed[i]
    morse_code_array << morse_code[letter]
    i += 1
  end

  return morse_code_array.join(" ")

end
puts decode("-- -.--   -. .- -- .")
