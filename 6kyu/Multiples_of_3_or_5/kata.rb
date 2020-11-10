def solution(number)
 # put your solution here
  (1...number).select { |x| x%3 == 0 || x%5 == 0}.reduce(:+)
end

# Better solution

# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end
