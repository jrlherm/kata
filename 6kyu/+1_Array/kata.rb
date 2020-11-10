def up_array(arr)
  return nil if arr == []
  arr.each { |num| return nil if num < 0 || num >= 10 }

  new_arr = (arr.join.to_i + 1).to_s.split('').map(&:to_i)
end

up_array([2,3,9])

# Better solution
def up_array(arr)
  return nil if arr.empty? || arr.any? { |x| x < 0 || x > 9 }
  arr.join.next.chars.map(&:to_i)
end
