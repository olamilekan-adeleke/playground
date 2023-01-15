void main(List<String> args) {
  final MallardDuck mallardDuck = MallardDuck(
    name: "Mallard Duck",
    flyBehavior: FlyWithOneWings(),
    soundBehavior: QuackSound(),
  );

  // print(mallardDuck.name); // Mallard Duck
  // mallardDuck.display(); // Display -> Display A Mallard Duck UI
  // mallardDuck.fly(); // Duck Flaps Both It's Wigs To Fly
  // mallardDuck.makeSound(); // Duck Says Quack! Quack!

  // final RobotDuck robotDuck = RobotDuck(name: "Duck-ki-tron 2000");

  // print(robotDuck.name); // Duck-ki-tron 2000
  // robotDuck.display(); // Display -> Display A Advance Robot Duck UI
  // robotDuck.fly(); // Duck FIre's It'e Engine And Blast Away....
  // robotDuck
  //     .makeSound(); // Duck Says Hello Humans, yes Can Actually Talk Coz why not :)
}

class Duck {
  final String name;
  final FlyBehavior flyBehavior;
  final SoundBehavior soundBehavior;

  const Duck({
    required this.name,
    required this.flyBehavior,
    required this.soundBehavior,
  });

  void walk() {
    // All Ducks Walk The Same Way
  }

  void display() {
    throw UnimplementedError();
  }
}

class MallardDuck extends Duck {
  MallardDuck({
    required super.name,
    required super.flyBehavior,
    required super.soundBehavior,
  });

  @override
  void display() {
    print("Display -> Display A Mallard Duck UI");
  }

  void preformFly() => flyBehavior.fly();

  void performSound() => soundBehavior.makeSound();
}

class RobotDuck extends Duck {
  RobotDuck({
    required super.name,
    required super.flyBehavior,
    required super.soundBehavior,
  });

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

class FlyingWithWings implements FlyBehavior {
  @override
  void fly() {
    print("Duck Flaps Both It's Wigs To Fly");
  }
}

class FlyWithOneWings implements FlyBehavior {
  @override
  void fly() {
    print("Duck fly with one wings");
  }
}

class NoFly implements FlyBehavior {
  @override
  void fly() {
    print("Can not fly");
  }
}

class FlyingWithJetEngine implements FlyBehavior {
  @override
  void fly() {
    print("Duck FIre's It'e Engine And Blast Away....");
  }
}

// Sound Behaviors
abstract class SoundBehavior {
  void makeSound();
}

class QuackSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Says Quack! Quack!");
  }
}

class ElectronicQuackSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Says Can Actually Talk");
  }
}

class NoSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Does Not Make Sound!");
  }
}

class SqueakSound implements SoundBehavior {
  @override
  void makeSound() {
    print("Duck Say's Squeak! Squeak!");
  }
}
