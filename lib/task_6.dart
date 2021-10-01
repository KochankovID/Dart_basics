import 'dart:math';

class Point {
  late int x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.center() {
    return Point(0, 0, 0);
  }

  double distanceTo(Point point) {
    return (pow(pow(x - point.x, 2) + pow(y - point.y, 2) + pow(z - point.z, 2),
            0.5))
        .toDouble();
  }

  String toString() {
    return '(x:$x, y:$y, z:$z)';
  }
}
