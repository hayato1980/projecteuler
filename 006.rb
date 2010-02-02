
square_sum = (1..100).map{|x|x**2}.inject(:+)
sum_square = (1..100).inject(:+) ** 2

puts sum_square - square_sum
