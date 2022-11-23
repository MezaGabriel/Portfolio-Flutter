import 'dart:convert';

void main() {
  // Create a Map
  final rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
  };

  // Show on console a Named Constructor
  final ironMan = Hero.fromJson(rawJson);

  // Normal Instance
  final ironMan2 = new Hero(name: rawJson['nombre']!, power: rawJson['power']!);

  // Show on console a Normal Instance
  print(ironMan2);
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

  //Named Constructor
  Hero.fromJson(Map<String, String> json)
      : this.name = json['name']!,
        this.power = json['power'] ?? 'No power';

  //Function
  @override
  String toString() {
    return 'nombre : ${this.name}, poder: ${this.power}';
  }
}
