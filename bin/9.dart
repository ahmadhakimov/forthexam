import 'dart:math';

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  double resm() {
    return sqrt(x * x + y * y);
  }
}

List<double> dism(List<Point> points) {
  return points.map((point) => point.resm()).toList();
}

void main() {
  List<Point> points = [
    const Point(8, 6),
    const Point(0, 7),
    const Point(45, -4),
  ];

  List<double> distances = dism(points);

  print('Distances from the origin: $distances');
}