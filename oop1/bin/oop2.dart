void main(List<String> args) {
  // Person p = Person.fromCustomString('Joko Susanto-10');

  // print(p.name);
  // print(p.age);

  Student s = Student('Martin', 10);

  print(s.name);
  print(s.age);
}

class Person {
  String name;
  int age;

  // Person(this.name, this.age);

  Person({this.name = 'no name', this.age = 0}) {
    print('buat person');
  }

  Person.jokoSatu() : this(name: 'Joko', age: 1);

  Person.fromCustomString(String str)
      : name = str.split('-').first,
        age = int.tryParse(str.split('-').last) ?? 0;

  factory Person.fromCustomString2(String str) {
    return Person(
        name: str.split('-').first,
        age: int.tryParse(str.split('-').last) ?? 0);
  }
}

class Student extends Person {
  Student(String name, int age) : super.fromCustomString('$name-$age') {
    print('buat student');
  }
}
