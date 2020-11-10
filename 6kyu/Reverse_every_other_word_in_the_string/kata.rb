def reverse_alternate(string)
  splitted = string.split(" ")
  splitted.map.with_index { |word, index| index.odd? ? word.reverse : word }.join(' ')
end

# Better solution

def reverse_alternate(string)
  string.split.map.with_index{|w,i| i.odd? ? w.reverse : w}.join(' ')
end
