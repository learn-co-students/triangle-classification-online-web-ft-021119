require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
  end

  def valid?
    sorted = @sides.sort
    if @sides.any? {|side| side <= 0 || side == nil}
      raise TriangleError
    elsif sorted[0] + sorted[1] <= sorted[2]
      raise TriangleError
    else
      true
    end
  end

  def kind
    if valid?
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @sides.detect{|side| @sides.count(side) > 1 }
        :isosceles
      else
        :scalene
      end
      #binding.pry
    else
      false
    end
  end

  class TriangleError < StandardError
    def i_must_have_truth(value)
      if value == false
        raise TypeError, "Invalid triangle!"
      end
    end
  end

end
