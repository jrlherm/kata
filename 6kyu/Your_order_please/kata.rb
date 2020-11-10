def order(words)
  # your code...
  splitted = words.split(" ")
  hash = {}
  splitted.each do |word|
    hash[1] = word if word.include?('1')
    hash[2] = word if word.include?('2')
    hash[3] = word if word.include?('3')
    hash[4] = word if word.include?('4')
    hash[5] = word if word.include?('5')
    hash[6] = word if word.include?('6')
    hash[7] = word if word.include?('7')
    hash[8] = word if word.include?('8')
    hash[9] = word if word.include?('9')
  end

  keys = hash.keys.sort
  result = []
  keys.each do |key|
    result.push(hash[key])
  end
  result.join(" ")
end


# Better solution

def order(words)
  words.split.sort_by{ |w| w[/\d/] }.join(' ')
end
