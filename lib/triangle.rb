class Triangle
  attr_accessor :length_one, :length_two, :length_three
  
  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end 
  
  
  def kind 
    length_array = [length_one, length_two, length_three]
    order = length_array.sort 
    if order.include?(0) || order[0] + order[1] <= order[2]
      raise TriangleError
    else  
      if order[0] == order[1] && order[1] == order[2] 
        :equilateral
        elsif order[0] != order[1] && order[1] == order[2]
       :isosceles
    else 
      :scalene
    end
  end 
  end 

    
    
 
  
  class TriangleError < StandardError
    def message
      puts "what in the isoterics is this???" 
    end 
  end 
  
end
