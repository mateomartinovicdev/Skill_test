morse_dict = {
  "A" => ".-",
  "B" => "-...",
  "C" => "-.-.",
  "D" => "-..",
  "E" => ".",
  "F" => "..-.",
  "G" => "--.",
  "H" => "....",
  "I" => "..",
  "J" => ".---",
  "K" => "-.-",
  "L" => ".-..",
  "M" => "--",
  "N" => "-.",
  "O" => "---",
  "P" => ".--.",
  "Q" => "--.-",
  "R" => ".-.",
  "S" => "...",
  "T" => "-",
  "U" => "..-",
  "V" => "...-",
  "W" => ".--",
  "X" => "-..-",
  "Y" => "-.--",
  "Z" => "--..",
  " " => " ",
  "1" => ".----",
  "2" => "..---",
  "3" => "...--",
  "4" => "....-",
  "5" => ".....",
  "6" => "-....",
  "7" => "--...",
  "8" => "---..",
  "9" => "----.",
  "0" => "-----"
}


def decodeMorse(morseCode, morse_dict)
  morse_words = morseCode.split("   ")
  word = ""
  morse_words.each do |morse_word|
    morse_letters = morse_word.split(" ")
    morse_letters.each do |morse_letter|
      word += morse_dict.key(morse_letter)
    end
    word += " "
  end
  return word.strip
end

puts decodeMorse('.... . -.--   .--- ..- -.. .', morse_dict)