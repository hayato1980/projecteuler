require "rational"

puts (1..20).inject{|r,x|
  r.lcm(x)
}
