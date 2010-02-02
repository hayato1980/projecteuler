# -*- coding: utf-8 -*-
require 'mathn'

class Array
  def sum
    inject(:+)
  end

  def product
    inject(:*)
  end

  def subsets
    (1..self.length).inject([]) { |r,l|
      r + combination(l).to_a
    }
  end
end

class Integer
  #約数を求める
  def divisions
    prime_divisions = prime_division.inject([]) {|r,x| r+[x.first]*x[1] }
    result = prime_divisions.subsets.map{|x| x.product }
    result << 1
    result.uniq.sort
  end

  #自身をのぞく約数を求める
  def divisions_without_self
    divisions.select {|x| x!=self }
  end

  #自身をのぞく約数の和を求める
  def sum_of_divisions
    divisions_without_self.sum
  end

  #友愛数かどうかの判定
  def amicable?
    self == self.sum_of_divisions.sum_of_divisions && ! perfect?
  end

  #完全数かどうかの判定
  def perfect?
    self == self.sum_of_divisions
  end
end

puts (2..10000).select { |x| x.amicable? }.sum
