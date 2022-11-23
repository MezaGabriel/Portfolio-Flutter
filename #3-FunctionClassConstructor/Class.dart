void main() {
  // Create an Instance of type Hero
  final wolverine = new Hero(name: 'Logan', power: 'Regeneration');

  // Show on console
  print(wolverine);
}

// Create a Class
class Hero {
  //Atributes
  String name;
  String power;

  //Method
  Hero({
    required this.name,
    required this.power,
  });

  //Function
  @override
  String toString() {
    return 'nombre : ${this.name}, poder: ${this.power}';
  }
}
