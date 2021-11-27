void main() {
  Shape s1 = Circle(radius: 3);
  Shape s2 = Rectangle(width: 3, height: 5);

  if (s1 is Circle) {
    print(s1.getArea());
  }

  print((s2 as Rectangle).getArea());
}

abstract class Shape {}

class Circle extends Shape {
  int radius;

  Circle({
    required this.radius,
  });

  double getArea() {
    return radius * radius * 3.14;
  }
}

class Rectangle extends Shape {
  int width;
  int height;

  Rectangle({
    required this.width,
    required this.height,
  });

  int getArea() {
    return width * height;
  }
}
