# @param {String} s
# @return {Integer}
def roman_to_int(s)
  # Symbol       Value
  # I             1
  # V             5
  # X             10
  # L             50
  # C             100
  # D             500
  # M             1000
  roman_to_int = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }

  symbols = s.split(//)
  values = symbols.map { |symbol| roman_to_int[symbol] }

  sum = 0
  temp = 0
  values.each do |value|
    if 1 == temp && [5,10].include?(value)
      temp = value - temp
      sum += temp
      temp = 0
      next
    end

    if 10 == temp && [50,100].include?(value)
      temp = value - temp
      sum += temp
      temp = 0
      next
    end

    if 100 == temp && [500,1000].include?(value)
      temp = value - temp
      sum += temp
      temp = 0
      next
    end

    if temp.zero? && [1, 10, 100].include?(value)
      p [value, temp]
      temp = value
    else
      sum += value
    end
  end
  sum += temp
  sum
end

p roman_to_int("MDCCCLXXXIV")
