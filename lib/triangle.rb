class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@a < 0 || @b < 0 || @c < 0) || (@a + @b <= @c || @b + @c <= @a || @a + @c <= @b)
     begin
        raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      end
      elsif @a==0 && @b == 0 && @c == 0
      begin
        raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      end
    elsif @a == @b && @b == @c && @a == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
    :scalene
    end
  end

  class TriangleError < StandardError
  end #end of TriangleError

end #end of Triangle class
