class Person {
  String name = 'no name';
  int _age = 0;

  void setAge(int value) {
    if (value < 0) {
      value = -value;
    }
    _age = value;
  }

  int getAge() {
    return _age;
  }

  set age(int value) {
    if (value < 0) {
      value = -value;
    }
    _age = value;
  }

  int get age {
    return _age;
  }
}
