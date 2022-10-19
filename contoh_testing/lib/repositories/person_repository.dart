import 'package:dio/dio.dart';

import '../entities/person.dart';

class PersonRepository {
  Dio _dio;

  PersonRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<Person?> createNewPerson(String name) async {
    try {
      var response =
          await _dio.post('lalala.com/person/create', data: {'name': name});

      var personJson = response.data['data'];

      // return Person.fromJson(personJson);
      return Person(id: personJson['id'], name: personJson['name']);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

// {
//   'data' : {
//     'id' : apa
//     'name' : 'siapa'
//   }
// }