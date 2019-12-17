# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  digits[-1] += 1

  (digits.size-1).downto(0) do |i|
    inc, d = digits[i].divmod(10)
    digits[i] = d
    if inc > 0
      if i == 0
        digits.unshift inc
      else
        digits[i-1] += inc
      end
    end
  end

  digits
end

p plus_one([1,2,3]) #=> [1,2,4]
p plus_one([4,3,2,1]) #=> [4,3,2,2]
p plus_one([9]) #=> [1,0]
