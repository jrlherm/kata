def create_array_of_tiers(num)
  arr = num.to_s.split('')
  new_arr = []
  i = 1
  while i <= arr.length
    nbr = arr[0,i].join
    new_arr.push(nbr)
    i += 1
  end
  return new_arr
end

create_array_of_tiers(420);
