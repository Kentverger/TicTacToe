class Algorithm
  attr_reader :number_list

  def initialize
    @number_list = Array.new(10) { rand(1...100) }
  end

  def divide(array)
    return array if array.size == 1

    div = (array.size / 2).floor
    first = array.slice(0, div)
    second = array.slice(div, array.size)

    first = self.divide(first)
    second = self.divide(second)

    if first.last <= second.first
      first << second.last
      second.pop

      return first if second.empty?
    end

    return self.merge(first, second)
  end

  def merge(first, second)
    s_array = []

    while !first.empty? && !second.empty?
      if first.first <= second.first
        s_array << first.first
        first.shift
      else
        s_array << second.first
        second.shift
      end

      s_array.concat(second) if first.empty?
      s_array.concat(first) if second.empty?
    end

    return s_array
  end
end
