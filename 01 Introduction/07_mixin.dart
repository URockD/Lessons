void main(){
  var car = Car();
  car.electricVariant();
  car.petrolVariant();

  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();
}

mixin ElectricVariant {
  void electricVariant() {
    print('This is an electric variant');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('This is a petrol variant');
  }
}
class Car with ElectricVariant, PetrolVariant {}

mixin CanFly {
  void fly() {
    print('I can fly');
  }
}

mixin CanWalk {
  void walk() {
    print('I can walk');
  }
}

class Bird with CanFly, CanWalk {
 
}

class Human with CanWalk {
 
}


