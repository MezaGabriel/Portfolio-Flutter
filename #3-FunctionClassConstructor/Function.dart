void main() {
  // Variable
  final name = 'Tony';

  // Call Function
  sayHi();

  // Call Function
  sayHiX(name);

  // Call Function
  sayHiY();

  // Call Function
  sayHiZ(name);

  // Call Function
  sayHiQ(message: 'Hi', name: name);
}

// Create a Function
void sayHi() {
  print('Hello World');
}

// Create a Function
void sayHiX(String x) {
  print('Hello $x');
}

// Create a Function
void sayHiY([String name = 'No name']) {
  print('Hello $name');
}

// Create a Function
void sayHiZ(String x, [String name = 'No name']) {
  print('$x $name');
}

// Create a Function
void sayHiQ({String? name, String? message}) {
  // For null may also use Required
  print('$message $name');
}
