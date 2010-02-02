
require 'mathn'

if RUBY_VERSION < "1.9.0"
  puts Prime.new.take(10001).last
elsif RUBY_VERSION >= "1.9.0"
  puts Prime.take(10001).last
end
