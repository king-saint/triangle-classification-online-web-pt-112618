class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (@side1 == @side2 && @side2 == @side3)  && @side1 != 0
      return :equilateral
    else
      raise TriangleError
    end
  end
end


class TriangleError < StandardError
  def message
    "That isn't a real triangle - try again!"
  end
end