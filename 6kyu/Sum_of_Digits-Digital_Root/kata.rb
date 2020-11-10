def digital_root(n)
  result = 0
  n.to_s.split('').map do |num|
    result += num.to_i
  end
  result.to_s.size > 1 ? digital_root(result) : result
end

# Better Solution

# def digital_root(n)
#   n < 10 ? n : digital_root(n / 10 + n % 10)
# end
