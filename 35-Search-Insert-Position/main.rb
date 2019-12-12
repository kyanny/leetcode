# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  next_pos = nil
  found = nil
  0.upto(nums.size-1) do |i|
    if nums[i] == target
      found = i
      break
    end

    if next_pos == nil && target < nums[i]
      next_pos = i
    end
  end

  if found
    found
  elsif next_pos
    next_pos
  else
    nums.size
  end
end

p search_insert([1,3,5,6], 5)
p search_insert([1,3,5,6], 2)
p search_insert([1,3,5,6], 7)
p search_insert([1,3,5,6], 0)

