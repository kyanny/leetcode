# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.split.last&.size || 0
end

p length_of_last_word("Hello World")
