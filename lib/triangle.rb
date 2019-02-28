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
    equality = array[0] + array[1] > array[2]
    if array.any?{|l| l <= 0 || l == nil}
      raise TriangleError
    elsif array.uniq.size == 1
      @kind = :equilateral
    elsif array.uniq.size == 2 && equality
      @kind = :isosceles
    elsif array.uniq.size == 3 && equality
      @kind = :scalene
    else
      raise TriangleError
    end #End of if/else nest
  end
end #End of Triangle Class
