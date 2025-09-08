# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb

# Triangle Rules:
# * A triangle should not have any sides of length 0 or negative.
# * Any two sides of a triangle should add up to more than the third side.

#
def triangle(a, b, c)
  sides = [a, b, c]

  if sides.any? { |l| l <= 0 }
    raise TriangleError
  elsif a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
