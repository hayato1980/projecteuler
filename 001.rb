puts (1..999).select{|x|
  x%3==0 or x%5==0
}.inject{|r,x|
  r+x
}
