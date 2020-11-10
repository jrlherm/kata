def encode(s)
  # your code here
  encoded = s.split('').map do |char|
    char = '1' if char == 'a'
    char = '2' if char == 'e'
    char = '3' if char == 'i'
    char = '4' if char == 'o'
    char = '5' if char == 'u'
    char = char if char != 'a' && char != 'e' && char != 'i' && char != 'o' && char != 'u'
  end
  encoded.join
end

def decode(s)
  decoded = s.split('').map do |char|
    char = 'a' if char == '1'
    char = 'e' if char == '2'
    char = 'i' if char == '3'
    char = 'o' if char == '4'
    char = 'u' if char == '5'
    char = char if char != '1' && char != '2' && char != '3' && char != '4' && char != '5'
  end
  decoded.join
end

# Better Solution

# def encode(s)
#   s.tr("aeiou", "12345")
# end

# def decode(s)
#   s.tr("12345", "aeiou")
# end
