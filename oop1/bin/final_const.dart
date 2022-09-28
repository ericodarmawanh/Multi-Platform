void main(List<String> args) {
  Person p = const Person('Joko');
  Person p2 = const Person('Joko');

  int a = 10;
  int b = 5 * 2;

  print(p == p2);
  print(identical(p, p2));

  print(a == b);
  print(identical(a, b));
}

class Person {
  final String name;

  const Person(this.name);
}

// const = konstanta = sesuatu yg bernilai tetap
// const : literal, symbolic
// const : 