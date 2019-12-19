# coding: utf-8
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  # Math.sqrt(x).to_i

  # Babylonian method
  # https://cpplover.blogspot.com/2010/11/blog-post_20.html
  n = x / 2.0 # initial val
  last_val = 0
  while n != last_val
    last_val = n
    n = (n + x / n) / 2.0
    # p [n, last_val]
  end
  n.to_i
end

p my_sqrt(4)
p my_sqrt(8)
p my_sqrt(123)
p my_sqrt(1)
# p my_sqrt(1024)
# p my_sqrt(9999)
