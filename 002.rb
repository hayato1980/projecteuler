
def fib_to(max)
  result = Array.new;
  result.push 1
  result.push 2
  while result.last <= max
    result.push(result.last(2).inject(:+));
  end
  result
end
puts fib_to(4000000).select{|x|x.even?}.inject(:+);
