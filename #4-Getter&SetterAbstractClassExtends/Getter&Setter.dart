import 'dart:math';

void main() {
  // New Instance Side
  final square = new Square(5);

  // New Instance Area
  square.area = 25;

  // Show on console
  print('area: ${square.calculateArea()}');
  print('side: ${square.side}');
  print('area get: ${square.area}');
}

class Square {
  double side = 0; // side * side

  //Getter
  double get area {
    return this.side * this.side;
  }

  //Setter
  set area(double value) {
    this.side = sqrt(value);
  }

  //Constructor
  Square(double side) : this.side = side;

  //Method
  double calculateArea() {
    return this.side * this.side;
  }
}
