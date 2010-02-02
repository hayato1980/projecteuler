
puts (2**1000).to_s.chars.map{|x| x.to_i }.inject(:+)
