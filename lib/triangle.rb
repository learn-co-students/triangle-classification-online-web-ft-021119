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
    if @sides.any? {|side| side <= 0}
      false
    elsif @sides[0] > @sides[1] + @sides[2] ||
      @sides[1] > @sides[0] + @sides[2] ||
      @sides[2] > @sides[0] +  @sides[1]
      false
    #should wok in ruby 2.5 but does not work in 2.3.1
    # elsif @sides.any? {|side| side > (@sides - side.to_s.split).sum}
    #   false
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
  # class TriangleError < StandardError
  # end
end
