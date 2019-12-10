# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  # haystack.index(needle) || -1

  return 0 if needle.empty?

  index = -1
  0.upto(haystack.size-1) do |i|
    index = i
    0.upto(needle.size-1) do |j|
      if haystack[i+j] != needle[j]
        index = -1
        break
      end
    end
    break if index > -1
  end
  index
end

p str_str('hello', 'll')
p str_str('aaaaa', 'bba')
p str_str('hello', '')
p str_str('aaa', 'a')
