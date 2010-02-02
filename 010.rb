
#require 'mathn'
#result = 0
#Prime.new.each{|x| break if x > 2000000; result += x}
#puts result

max=2000000
table=Hash.new
(2..max).each{|x| table[x] = true }
table.keys.sort.each{|x|
  next if !table[x];
  (x+x).step(max,x) {|n| table[n] = false }
}

puts table.keys.select {|x| table[x] }.inject(:+) 
