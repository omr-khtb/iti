class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  double get width => _width;
  double get height => _height;
  double get area => _width * _height;
  double get perimeter => 2 * (_width + _height);

  set width(double value) {
    if (value > 0) _width = value;
  }

  set height(double value) {
    if (value > 0) _height = value;
  }
}

void main() {
  Rectangle rect = Rectangle(5, 10);
  print("Area: ${rect.area}");
  print("Perimeter: ${rect.perimeter}");
}