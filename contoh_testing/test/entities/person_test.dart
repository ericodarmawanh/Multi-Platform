import 'package:contoh_testing/entities/person.dart';
import 'package:test/test.dart';

void main() {
  group('Test buat Person dari json', () {
    var json = {'id': 123, 'name': 'Joko'};
    var person = Person.fromJson(json);

    test('Name sesuai dengan yang diinput', () async {
      expect(person.name, equals('Joko'));
    });

    test('Id berupa integer', () async {
      expect(person.id, isA<int>());
    });

    test('Id sesuai yang diinput', () async {
      expect(person.id, equals(123));
    });
  });
}
