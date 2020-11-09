def sum_pairs(ints, s)
    #your code here
  results = []
  ints_2 = ints[1, -1]
  ints.each do |nbr1|
    ints_2.each do |nbr2|
      results.push([nbr1, nbr2]) if nbr1 + nbr2 == s
    end
  end

  return nil if results == []

  result = 0

  results.each do |test_result|
    result = test_result if result == 0
    result = test_result if test_result[0] < result[0] && test_result[0] >= 0
  end

  result
end

p sum_pairs([1, 4, 8, 7, 3, 15], 8) # ==> [1, 7]
p 'Should return [1, 7]'
p '---------------------------'
p sum_pairs([1, -2, 3, 0, -6, 1], -6) # ==> [0, -6]
p 'Should return [0, -6]'
p '---------------------------'
p sum_pairs([20, -13, 40], -7) # ==> nil
p 'Should return nil'
p '---------------------------'
p sum_pairs([1, 2, 3, 4, 1, 0], 2) # ==> [1, 1]
p 'Should return [1, 1]'
p '---------------------------'
p sum_pairs([10, 5, 2, 3, 7, 5], 10) # ==> [3, 7]
p 'Should return [3, 7]'
p '---------------------------'
p sum_pairs([4, -2, 3, 3, 4], 8) # ==> [4, 4]
p 'Should return [4, 4]'
p '---------------------------'
p sum_pairs([0, 2, 0], 0) # ==> [0, 0]
p 'Should return [0, 0]'
p '---------------------------'
p sum_pairs([5, 9, 13, -3], 10) # ==> [13, -3]
p 'Should return [13, -3]'

# Test.expect(sum_pairs(l1, 8) == [1, 7], "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")
# Test.expect(sum_pairs(l2, -6) == [0, -6], "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6")
# Test.expect(sum_pairs(l3, -7) == nil, "No Match: ["+l3.join(", ")+"] should return nil for sum = -7")
# Test.expect(sum_pairs(l4, 2) == [1, 1], "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
# Test.expect(sum_pairs(l5, 10) == [3, 7], "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
# Test.expect(sum_pairs(l6, 8) == [4, 4], "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
# Test.expect(sum_pairs(l7, 0) == [0, 0], "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
# Test.expect(sum_pairs(l8, 10) == [13, -3], "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10")
