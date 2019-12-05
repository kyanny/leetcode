# @param {String} s
# @return {Boolean}
def is_valid(s)

  return true if s.empty?

  return false if s.size.odd?

  parens = {
    '(' => ')',
    '{' => '}',
    '[' => ']',
  }

  stack = []

  s.split('').each do |c|
    if stack.empty?
      stack << c
    else
      if parens[stack.last] == c
        stack.pop
      else
        stack << c
      end
    end
  end

  if stack.empty?
    return true
  else
    return false
  end
end

p is_valid("()")
p is_valid("()[]{}")
p is_valid("(]")
p is_valid("([)]")
p is_valid("{[]}")
