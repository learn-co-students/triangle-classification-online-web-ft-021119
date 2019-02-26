class Triangle
  attr_accessor :length, :width, :height, :type

  def initialize (length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if @length <= 0 || @width <= 0 || @height <= 0
      raise TriangleError
    elsif @length + @width <= @height || @width + @height <= @length || @length + @height <= @width
      raise TriangleError
    elsif @length == @width && @width == @height
      @type = :equilateral
    elsif @length == @width || @width == height || @length == @height
      @type = :isosceles
    elsif @length != @width && @width != @height && @length != @height
      @type = :scalene
    end
  end

  class TriangleError < StandardError
  end

end
