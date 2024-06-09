import 'dart:math';
abstract class Shape {
  double area();
}
class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double area() {
    return pi * radius * radius;
  }
}
class Square extends Shape {
  double side;

  Square({required this.side});

  @override
  double area() {
    return side * side;
  }
}

void main() {
  Shape circle = Circle(radius: 5);
  Shape square = Square(side: 4);

  print('Area of the circle: ${circle.area().toInt()}');
  print('Area of the square: ${square.area().toInt()}');
}