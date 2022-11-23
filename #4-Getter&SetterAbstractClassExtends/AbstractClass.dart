void main() {
  // Instance
  final dog = new Dog();
  final cat = new Cat();

  // Show on console
  animalSound(dog);
  animalSound(cat);
}

// Function
void animalSound(Animal animal) {
  animal.emitSound();
}

// Abstract Class / You can't instantiate this
abstract class Animal {
  int? paw;
  void emitSound();
}

// Regular Classes
class Dog implements Animal {
  int? paw;

  void emitSound() => print('Guauuuu');
}

class Cat implements Animal {
  int? paw;
  int? tail;

  void emitSound() => print('Miauuuu');
}
