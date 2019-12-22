# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
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
end

p climb_stairs(2)
p climb_stairs(3)
p climb_stairs(4)
