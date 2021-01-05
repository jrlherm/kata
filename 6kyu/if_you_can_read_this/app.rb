ALPHABET = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", ".", "?", "!" ]
NATO = [ "Alfa", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", "Hotel", "India", "Juliett", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "Xray", "Yankee", "Zulu", ".", "?", "!" ]

def to_nato(words)
  translation = []
  words.gsub(/\s+/, "").split("").each { | letter | translation.push(NATO[ALPHABET.find_index(letter.upcase)]) }
  translation.join(" ")
end

to_nato('If you can read !')
