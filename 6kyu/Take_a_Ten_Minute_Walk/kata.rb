def is_valid_walk(walk)
  #your code here
  walk.count("n") == walk.count("s") && walk.count("e") == walk.count("w") && walk.length == 10 ? true : false
end


# Better solution

# def isValidWalk(walk)
#   walk.count('w') == walk.count('e') and
#   walk.count('n') == walk.count('s') and
#   walk.count == 10
# end
