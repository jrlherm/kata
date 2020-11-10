def duplicate_encode(word)

  word.downcase!
  splitted_word = word.split("")

  counts = Hash.new(0)
  splitted_word.each { |element| counts[element] += 1 }

  splitted_word.collect! {|x| counts[x] > 1 ? ")" : "("}.join

end

# Better solution

# def duplicate_encode(word)
#   word
#       .downcase
#       .chars
#       .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
#       .join
# end
