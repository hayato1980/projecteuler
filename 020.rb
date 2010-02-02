
puts (1..1000).inject(:*).to_s.chars.map{|x|x.to_i}.inject(:+)
