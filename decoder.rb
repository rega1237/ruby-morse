MORSE_TABLE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_char(char)
  @char = ''
  MORSE_TABLE.each do |key, value|
    @char = value if key == char
  end
  @char
end

def decode_word(word)
  @ar_word = word.split
  @word = ''
  @ar_word.each do |morse|
    @word += decode_char(morse).to_s
  end
  @word
end

def decode(message)
  @ar_message = message.split('   ')
  @out_message = ''
  @ar_message.each do |morse_message|
    @out_message += "#{decode_word(morse_message)} "
  end
  @out_message
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
