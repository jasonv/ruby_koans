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
#
def triangle(a, b, c)
    if(a==0 and b==0 and c==0) then raise TriangleError end
    if(a<=0 or b<=0 or c<=0) then raise TriangleError end
    if(a==(b+c)) then raise TriangleError end
    if(b==(a+c)) then raise TriangleError end
    if(c==(a+b)) then raise TriangleError end
    if(a>(b+c)) then raise TriangleError end
    if(b>(a+c)) then raise TriangleError end
    if(c>(a+b)) then raise TriangleError end
    if(a==b and b==c) then return :equilateral end
    if(a==b and b!=c) then return :isosceles end
    if(b==c and b!=a) then return :isosceles end
    if(a==c and b!=c) then return :isosceles end
    if(a!=b and b!=c and c!=a) then return :scalene end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
