require 'pry'
class Triangle
  attr_accessor :type

  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    #together = length1
    @type = type
  end

  def kind
      if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
        raise TriangleError
      elsif @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
        raise TriangleError
      end

    # if @length1 + @length2 < @length3 || @length1 + @length3 < @length2 || @length2 + @length3 < @length1
    # return "Howdy, Rockstar Coders!"
    # #if sum of any two sides is less than 3rd side then "ERROR in the HOUSE!"
#binding.pry

    if @length1 == @length2 && @length2 == @length3
      @type = :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      @type = :isosceles
    else @length1 != @length2 || @length2 != @length3 || @length1 != @length3
      @type = :scalene

      #binding.pry
    end

  end



  class TriangleError < StandardError
    # triangle error code
  end
end
