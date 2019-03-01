class Triangle
  attr_accessor :l_1, :l_2, :l_3



  def initialize(l_1, l_2, l_3)
    @l_1 = l_1
    @l_2 = l_2
    @l_3 = l_3
  end

  def kind

    if @l_1 <= 0 || @l_2 <= 0 || @l_3 <= 0
      raise TriangleError
    elsif @l_1 + @l_2 <= @l_3 || @l_1 + @l_3 <= @l_2 || @l_2 + @l_3 <= @l_1
      raise TriangleError
    elsif @l_1 == @l_2 && @l_1 == @l_3 && @l_2 == @l_3
      :equilateral
    elsif @l_1 != @l_2 && @l_1 != @l_3 && @l_2 != @l_3
      :scalene
    elsif @l_1 == @l_2 || @l_1 == @l_3 || @l_2 == @l_3
      :isosceles
    end
  end




  class TriangleError < StandardError

  end



end
