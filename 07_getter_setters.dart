void main(List<String> args) {
  final mySquare = Square(side: 10);

  print('Area: ${mySquare.calculateArea()}');
}

class Square {
  double _side; // _side * _side

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'), // las assertions o comprobaciones deben ir antes de asignarse el valor
        _side = side;

  double calculateArea() {
    return _side * _side;
  }

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;
  }
}
