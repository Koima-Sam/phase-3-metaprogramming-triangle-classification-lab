class Triangle
  attr_accessor :a, :b, :c
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    validate_triangle
   if self.a == self.b  && self.b == self.c
      :equilateral
    elsif self.a == self.b || self.a == self.c ||self.b==self.c
      :isosceles
    elsif self.a != self.b  && self.b != self.c  && self.a != self.c 
      :scalene
    end
  end
  def side_larger_than_zero?
    @a > 0 && @b > 0 && @c > 0
  end

  def valid_triangle_inequity?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    raise TriangleError if !side_larger_than_zero? || !valid_triangle_inequity?
  end
  class TriangleError < StandardError
  end
end