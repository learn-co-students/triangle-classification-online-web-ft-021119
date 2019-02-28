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
      # [1] pry(#<Triangle>)> @sides=> [0, 0, 0]
      # [2] pry(#<Triangle>)> @sides.any? {|side| side = 0}=> true
      # [3] pry(#<Triangle>)> @sides.any? {|side| side <= 0}=> true
      #binding.pry
      false
    elsif @sides[0] > @sides[1] + @sides[2] ||
      @sides[1] > @sides[0] + @sides[2] ||
      @sides[2] > @sides[0] +  @sides[1]
      false
    #should work in ruby 2.5 but does not work in 2.3.1
    # elsif @sides.any? {|side| side > (@sides - side.to_s.split[0].to_i).sum}
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
  #   def i_must_have_truth(value)
  #     if value == false
  #       raise TypeError, "Invalid triangle!"
  #     end
  #   end
  # end

end
