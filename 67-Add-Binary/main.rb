# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  ( (a.to_i(2)) + b.to_i(2)).to_s(2)
end

p add_binary("11", "1")
p add_binary("1010", "1011")
