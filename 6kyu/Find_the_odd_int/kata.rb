def find_it(seq)
  hash = {}
  seq.sort.each { |num| hash.include?(num) ? hash[num] += 1 : hash[num] = 1 }
  result = hash.select { |k, v| v.odd? }
  result = result.keys
  result[0]
end

# Better solution

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end
