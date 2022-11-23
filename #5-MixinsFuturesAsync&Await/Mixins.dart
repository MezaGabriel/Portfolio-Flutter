// Species
abstract class Animal {}

// Type
abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

// Mobility
abstract class Fly {
  void fly() => print('Im Flying');
}

abstract class Run {
  void run() => print('Im Running');
}

abstract class Swim {
  void swim() => print('Im Swimming');
}

// Animals
class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Fly, Run {}

class Cat extends Mammal with Run {}

class Dove extends Bird with Run, Fly {}

class Duck extends Bird with Swim, Run, Fly {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Swim, Fly {}

void main() {
  // Show on console
  final flipper = new Dolphin();
  flipper.swim();
  // Show on console
  final bat = new Bat();
  bat.run();
  bat.fly();
  // Show on console
  final cat = new Cat();
  cat.run();
  // Show on console
  final dove = new Dove();
  dove.run();
  dove.fly();
  // Show on console
  final duck = new Duck();
  duck.run();
  duck.fly();
  duck.swim();
  // Show on console
  final shark = new Shark();
  shark.swim();
  // Show on console
  final flyingfish = new FlyingFish();
  flyingfish.fly();
  flyingfish.swim();
}
