class Triangle
  attr_accessor :a, :b, :c 
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end 
  def kind
    if (@a <= 0 || @b <= 0 || @c <= 0) || (@a + @b <= @c || @b + @c <= @a || @a + @c <= @b)
    begin
        raise TriangleError
      end
    elsif @a == @b && @b == @c 
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles 
    else 
    :scalene
    end
  end 
  
  class TriangleError < StandardError 
  end 
end

#from pairing session 2/28 
# class Triangle
#   attr_reader :a, :b, :c
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end

#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each do |side|
#       real_triangle << false if side <= 0
#     raise TriangleError if real_triangle.include?(false)
#     end
#   end

#   class TriangleError < StandardError
#   end

# end