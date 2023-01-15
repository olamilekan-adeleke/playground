void main(List<String> args) {
  final MallardDuck mallardDuck = MallardDuck(name: "Mallard Duck");

  print(mallardDuck.name); // Mallard Duck
  mallardDuck.display(); // Display -> Display A Mallard Duck UI
  mallardDuck.fly(); // Duck Flaps Both It's Wigs To Fly
  mallardDuck.makeSound(); // Duck Says Quack! Quack!

  final RobotDuck robotDuck = RobotDuck(name: "Duck-ki-tron 2000");

  print(robotDuck.name); // Duck-ki-tron 2000
  robotDuck.display(); // Display -> Display A Advance Robot Duck UI
  robotDuck.fly(); // Duck FIre's It'e Engine And Blast Away....
  robotDuck.makeSound(); // Duck Says Hello Humans, yes Can Actually Talk Coz why not :)
}

class Duck {
  final String name;
  const Duck({required this.name});

  void walk() {
    // All Ducks Walk The Same Way
  }

  void display() {
    throw UnimplementedError();
  }
}

class MallardDuck extends Duck with QuackSound, FlyingWithWings {
  MallardDuck({required super.name});

  @override
  void display() {
    print("Display -> Display A Mallard Duck UI");
  }
}

class RobotDuck extends Duck with ElectronicQuackSound, FlyingWithJetEngine {
  RobotDuck({required super.name});

  @override
  void display() {
    print("Display -> Display A Advance Robot Duck UI");
  }
}

/// --------------- Behaviors -------------- ///
// Fly Behaviors
abstract class FlyBehavior {
  void fly();
}

mixin FlyingWithWings implements FlyBehavior {
  @override
  void fly() {
    print("Duck Flaps Both It's Wigs To Fly");
  }
}

mixin NoFly implements FlyBehavior {
  @override
  void fly() {
    print("Can not fly");
  }
}

mixin FlyingWithJetEngine implements FlyBehavior {
  @override
  void fly() {
    print("Duck FIre's It'e Engine And Blast Away....");
  }
}

// Sound Behaviors
abstract class SoundBehavior {
  void makeSound();
}

mixin QuackSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Says Quack! Quack!");
  }
}

mixin ElectronicQuackSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Says Can Actually Talk");
  }
}

mixin NoSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Does Not Make Sound!");
  }
}

mixin SqueakSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Say's Squeak! Squeak!");
  }
}
