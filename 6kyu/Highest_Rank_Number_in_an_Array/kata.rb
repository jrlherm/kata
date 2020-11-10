def highest_rank(arr)
  hash = {}
  arr.sort.each { |num| hash.include?(num) ? hash[num] += 1 : hash[num] = 1 }
  new_hash = hash.select { |element| hash[element] == hash.values.max }
  new_hash.keys.max
end

# Better solution

# def highest_rank(arr)
#   arr.group_by(&:itself).max_by { |k, v| [v.size, k] } [0]
# end
