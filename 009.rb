
def pitagolas? array
  array.sort
  array[0]*array[0]+array[1]*array[1]==array[2]*array[2]
end

tmp = (1..1000).to_a
tmp = tmp.combination(3)
tmp = tmp.select{|x| 
  x[0]+x[1]+x[2] == 1000
}
tmp = tmp.select{|x|
  pitagolas? x
}
puts tmp
#time over!!!
