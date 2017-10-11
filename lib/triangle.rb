require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    #binding.pry
    if @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side3 + @side1 <= @side2
      raise TriangleError
    elsif @side1 < 0 || @side2 < 0 || @side3 < 0
      raise TriangleError
    elsif @side1 == 0 && @side2 == 0 && @side3 == 0
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3 && @side1 == @side3
      :equilateral
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3 && @side1 != @side2 || @side2 != @side3 || @side1 != @side3
      :isosceles

    end
  end

end

class TriangleError < StandardError
  def message
    "Triangle error. Please check input values for all sides of the triangle."
  end
end
