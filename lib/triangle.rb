class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  #What has to happen to make it fail?
    #A side is not larger than 0
    #The sum of the lengths of 2 sides do not exceed the length of one side

  def kind
    array_of_lengths = [@length_1, @length_2, @length_3]
    lengths_in_order = array_of_lengths.sort

    if lengths_in_order.include?(0) || lengths_in_order[0] + lengths_in_order[1] <= lengths_in_order[2]
      raise TriangleError
    else
      if lengths_in_order[0] == lengths_in_order[1] && lengths_in_order[1] == lengths_in_order[2]
        :equilateral
      elsif lengths_in_order[0] != lengths_in_order[1] && lengths_in_order[1] != lengths_in_order[2]
        :scalene
      else
        :isosceles
      end
    end

  end

  class TriangleError < StandardError
    def message
      puts "Your triangle should not violate triangle inequality"
    end
  end

end
