def pig_it(text)
  splitted = text.split(" ")
  aze = splitted.map do |word|
    if word.count("a-zA-Z") > 0
      first_letter = word[0]
      rest_world   = word[1..-1]
      "#{rest_world}#{first_letter}ay"
    else word = word
    end
  end
  aze.join(" ")
end

# Better solution

# def pig_it text
#   text.gsub(/(\w)(\w+)*/, '\2\1ay')
# end
