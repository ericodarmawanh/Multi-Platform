//* Right

class Duck {
  void swim() {
    // ...
  }

  void quack() {
    // ...
  }

  void eat() {
    // ...
  }
}

// class Duck implements IKemampuanDasarBebek {
//   void swim() {
//     // ...
//   }

//   void quack() {
//     // ...
//   }

//   void eat() {
//     // ...
//   }
// }

class Malard extends Duck {
  @override
  void eat() {
    // do Malard way of eating
  }
}

// abstract class Toy {}

// abstract class IKemampuanDasarBebek implements IBisaBerenang {
//   void quack();
// }

// abstract class IBisaBerenang {
//   void swim();
// }

// class RubberDuck extends Toy implements IKemampuanDasarBebek {
//   @override
//   void quack() {}

//   @override
//   void swim() {}
// }
