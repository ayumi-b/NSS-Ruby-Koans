require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.

  def triangle(a, b, c)
    raise TriangleError, "All Sides must be greater than zero" if (a == 0) | (b == 0) | (c == 0)
    raise TriangleError, "Sides cannot be a negative number" if (a < 0) | (b < 0) | (c < 0)
    raise TriangleError, "rule: Two sides can never be less than the sum of one side" if ((a + b) < c) | ((a + c) < b) | ((b + c) < a)
    raise TriangleError, "rule: Two sides can never be equal one side" if ((a + b) ==  c) | ((a + c) ==  b) | ((b + c) ==  a)
    #return :equilateral if (a == b) & (a == c) & (b == c)
    #return :isosceles if (a == b) | (a == c) | (b == c)
    #return :scalene
  end


  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 1, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
end
