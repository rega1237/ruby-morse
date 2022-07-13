Morse_table = {
  ".-" => "a",
  "-..." => "b",
  "-.-." => "c",
  "-.." => "d",
  "." => "e",
  "..-." => "f",
  "--." => "g",
  "...." => "h",
  ".." => "i",
  ".---" => "j",
  "-.-" => "k",
  ".-.." => "l",
  "--" => "m",
  "-." => "n",
  "---" => "o",
  ".--." => "p",
  "--.-" => "q",
  ".-." => "r",
  "..." => "s",
  "-" => "t",
  "..-" => "u",
  "...-" => "v",
  ".--" => "w",
  "-..-" => "x",
  "-.--" => "y",
  "--.." => "z",
}

def decode_char(char)
 @char = ''
 Morse_table.each {|key,value|
   if key == char
     @char = value
   end
 }
 return @char
end

def decode_word(word)
 @ar_word = word.split
 @word = ''
   @ar_word.each {|morse|
     @word += "#{decode_char(morse)}"
   }
 return @word
end

def decode(message)
 @ar_message = message.split("   ")
 @message = ''
 @ar_message.each {|message|
   @message += "#{decode_word(message)} "
 }
 return @message
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')