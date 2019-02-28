require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3, :kind

  class TriangleError < StandardError
  end

  def initialize(l1, l2, l3)
    @l1, @l2, @l3 = l1, l2, l3
  end

  def kind
    array = [@l1, @l2, @l3].sort
    if array.any?{|l| l <= 0 || l == nil}
      raise TriangleError
    elsif array.uniq.size == 1
      @kind = :equilateral
    elsif array.uniq.size == 2
      if array[0] + array[1] > array[2]
        @kind = :isosceles
      else
        raise TriangleError
      end
    elsif array.uniq.size == 3
      if array[0] + array[1] > array[2]
        @kind = :scalene
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end #End of if/else nest
  end
end #End of Triangle Class
