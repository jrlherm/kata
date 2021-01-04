def two_sum(numbers, target)
  # solution
  numbers.each_with_index do |first_num, index1|
    numbers.each_with_index do |second_num, index2|
      if index1 != index2
        p [index1, index2] if first_num + second_num == target
      end
    end
  end
end

two_sum([2, 2, 3], 4)
