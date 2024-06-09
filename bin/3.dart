class Rectangle {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  double reare() => width * height;
}

void main() {
  List<Rectangle> rectangles = [
    Rectangle(width: 3, height: 4),
    Rectangle(width: 5, height: 2),
    Rectangle(width: 7, height: 1),
    Rectangle(width: 4, height: 6),
  ];

  Rectangle largestRectangle = rectangles.reduce((a, b) => a.reare() > b.reare() ? a : b);

  print('the big one is : ${largestRectangle.reare() } ');
}