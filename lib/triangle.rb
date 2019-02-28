class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    sum_of_lengths = @length_1 + @length_2 + @length_3
    two_of_lengths = @length_1 + @length_2
    if sum_of_lengths == 0 || two_of_lengths <= @length_3

    else

    end
  end

  class TriangleError < StandardError
    def message
      puts "Your triangle should not violate triangle inequality"
    end
  end

end
