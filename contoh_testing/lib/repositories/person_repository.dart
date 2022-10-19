import 'dart:convert';

import 'package:contoh_testing/entities/tresult.dart';
import 'package:dio/dio.dart';

import '../entities/person.dart';

class PersonRepository {
  Dio _dio;

  PersonRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<TResult<Person>> createNewPerson(String name) async {
    try {
      var response =
          await _dio.post('lalala.com/person/create', data: {'name': name});

      var personJson = response.data['data'];

      // return TResult.success(Person.fromJson(personJson));
      return TResult.success(
          Person(id: personJson['id'], name: personJson['name']));
    } on DioError catch (e) {
      print(e.response);
      return TResult.failed(jsonDecode(e.response!.toString())['message']);
    }
  }
}

// Kembalian dari server
// Kalau berhasil
// {
//   'data' : {
//     'id' : apa
//     'name' : 'siapa'
//   }
// }

// Kalau gagal
// {
//   'message': 'error message'
// }



// abstract class ReturnValue<T> {}

// class Success<T> extends ReturnValue<T> {
//   T value;

//   Success(this.value);
// }

// class Failed<T> extends ReturnValue<T> {
//   String message;

//   Failed(this.message);
// }

// ReturnValue<int> method() {
//   return Success(10);
//   // return Failed('gagal nih');
// }
