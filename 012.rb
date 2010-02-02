
require 'mathn'

def triangle n
  (1..n).inject(:+)
end

class Array
  def product
    inject(:*)
  end

  def subsets
    (1..self.length).inject([]) { |r,l| r + combination(l).to_a }
  end
end


class Integer
  def divisions
    prime_divisions = prime_division.inject([]) {|r,x| r+[x.first]*x[1] }
    result = prime_divisions.subsets.map{|x| x.product }
    result << 1
    result.uniq.sort
  end
end


n = 1;
while triangle(n).divisions.length <= 500
  n = n + 1
end

puts n
puts triangle(n)
