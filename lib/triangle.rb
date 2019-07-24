class Triangle

  attr_accessor :x, :y, :z, :isosceles, :equilateral, :scalene

  def initialize(x,y,z)
    @x = int(input("x: "))
    @y = int(input("y: "))
    @z = int(input("z: "))
  end

  def kind(x,y,z)
    s = (x + y + z) / 2.0
    g = (s - x) * ( s - y ) * ( s - z )
    if x <=0 || y <=0 || z <=0 || g <=0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
    if x = y && y = z
     :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
     :scalene
    end
  end


  class TriangleError < StandardError
    def message
      "you must give the kind method an argument of an instance of the triangle class!"
    end
  end
end
