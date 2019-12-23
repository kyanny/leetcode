# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
=begin
  # https://www.youtube.com/watch?v=_RrNV8oMMug
  if n <= 1
    return 1
  end

  ways = []
  ways[0] = 1
  ways[1] = 1

  2.upto(n) do |i|
    ways[i] = ways[i - 2] + ways[i - 1]
  end

  ways[n]
=end

=begin
  if n == 1
    1
  elsif n == 2
    2
  else
    climb_stairs(n-1) + climb_stairs(n-2)
  end
=end

  rec = -> (n, memo) {
    if n == 1
      memo[n] = 1
    elsif n == 2
      memo[n] = 2
    elsif memo[n]
      memo[n]
    else
      p n
      memo[n] = rec.call(n-1, memo) + rec.call(n-2, memo)
    end
  }
  memo = {}
  rec.call(n, memo)

  memo[n]

end

p climb_stairs(2)
p climb_stairs(3)
p climb_stairs(4)
p climb_stairs(38)
