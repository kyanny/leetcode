# coding: utf-8
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?
  i = 0
  j = 0
  0.upto(nums.size-1) do
    if nums[i] == nums[j]
      j+=1
    else
      i+=1
      nums[i] = nums[j]
      j+=1
    end
  end
  i+1
end

p remove_duplicates([1,1,2])
p remove_duplicates([0,0,1,1,1,2,2,3,3,4])

# 自力では解けなかった
