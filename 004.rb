
class Integer
  def cycled?
    self.to_s.reverse == self.to_s
  end
end

puts (100..999).to_a.combination(2).map{|x|
  [x.inject(:*),x.first,x.last]
}.select{|x|
  x.first.cycled?
}.max_by{|x|
  x.first
}
