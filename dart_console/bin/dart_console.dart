import 'dart:io';

import 'package:dart_console/button.dart';
import 'package:dart_console/person.dart';

void main(List<String> arguments) {
  // String? input = stdin.readLineSync();
  // int a;
  // print(input);

  Person p1 = Person();
  Person p2 = p1;
  p1.setAge(-5);
  p1.age = -10;

  print(p1.age);

  p2.name = 'Martin';

  print(p1.name);
  print(p2.name);

  int a = 8;
  int b = a;

  b = 9;

  print(a);
  print(b);

  myMethod3(number2: 20, number1: 10);
  myMethod4(number1: 10);
  myMethod5(10, number2: 20, number4: 40);
  myMethod6(number4: 40, 1, 2);

  Function methodSaya;
  methodSaya = myMethod1;

  methodSaya(1, 2);

  void Function(int, int) methodSaya2;
  methodSaya2 = myMethod1;

  Button button = Button(onPressed: (str) {
    print('halooooo $str');
    return '';
  });

  button.buttonDitekan();
}

void hello() {
  print('hello world');
}

void myMethod1(int number1, int number2) {
  print('$number1 ${number2 + 1}');
}

void myMethod2([int number1 = 1, int number2 = 2]) {
  print('$number1 ${number2 + 1}');
}

void myMethod3({int number1 = 1, int number2 = 2}) {
  print('$number1 ${number2 + 1}');
}

void myMethod4(
    {required int number1, int number2 = 2, int number3 = 3, int number4 = 4}) {
  print('$number1 ${number2 + 1} $number3 $number4');
}

void myMethod5(int number1,
    {int number2 = 2, int number3 = 3, int number4 = 4}) {
  print('$number1 ${number2 + 1} $number3 $number4');
}

void myMethod6(int number1, int number2, {int number3 = 3, int number4 = 4}) {
  print('$number1 ${number2 + 1} $number3 $number4');
}
