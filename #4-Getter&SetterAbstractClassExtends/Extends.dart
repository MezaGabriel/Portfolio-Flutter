void main() {
  // Instance
  final superman = new Hero('Clark Kent');
  final luthor = new Hero('Lex Luthor');

  // Show on console
  print(superman);
  print(luthor);
}

// Abstract Class / You can't instantiate this
abstract class Character {
  String? power;
  String? name;

  Character(this.name);

  // Function
  @override
  String toString() {
    return '$name - $power';
  }
}

// Regular Classes
class Hero extends Character {
  int? courage = 100;
  Hero(String name) : super(name);
}

class Villan extends Character {
  int? evil = 50;
  Villan(String name) : super(name);
}
