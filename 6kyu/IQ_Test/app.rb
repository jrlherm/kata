def iq_test(numbers)
  #your code here
  odd = []
  even = []
  arr = numbers.split(" ")

  arr.each do |n|
    n.to_i.even? ? even.push(n.to_i) : odd.push(n.to_i)
  end

  odd.length < even.length ? arr.index(odd[0].to_s) + 1 : arr.index(even[0].to_s) + 1

end

iq_test("2 4 7 8 10") # => 3
iq_test("1 2 2")
