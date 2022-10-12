import 'dart:convert';
import 'dart:developer';
import 'package:ambil_data_dari_api/user.dart';
import 'package:dio/dio.dart';

class UserServices {
  Future<User?> getUserData(int id) async {
    Dio dio = Dio();

    try {
      var result = await dio.get('https://reqres.in/api/users/$id');

      User user = User.fromJson(result.data['data']);

      return user;
    } on DioError catch (e) {
      log(e.response.toString());
      return null;
    }
  }

  Future<List<User>?> getListUserData(int pageNumber) async {
    Dio dio = Dio();

    try {
      var result =
          await dio.get('https://reqres.in/api/users?page=$pageNumber');

      log((result.data['data'] as List).length.toString());

      List<User> users =
          (result.data['data'] as List).map((e) => User.fromJson(e)).toList();

      return users;
    } catch (e) {
      log(e.toString());
      print(e.toString());
      return null;
    }
  }

  Future<User?> createUserData(
      {required String firstName,
      required String lastName,
      required String email}) async {
    Dio dio = Dio();

    try {
      var result = await dio.post('https://reqres.in/api/users',
          data: {'firstName': firstName, 'lastName': lastName, 'email': email});

      User user = User.fromJson({
        'first_name': result.data['firstName'],
        'last_name': result.data['lastName'],
        'email': result.data['email'],
        'id': int.tryParse(result.data['id']) ?? 0
      });

      return user;
    } catch (e) {
      return null;
    }
  }

  void getFruits() async {
    Dio dio = Dio();

    try {
      var result = await dio.get('https://www.fruityvice.com/api/fruit/all');

      // log(result.data.runtimeType.toString());
      for (var element
          in (jsonDecode(result.data) as List).map((e) => e['name'])) {
        log(element.toString());
      }
    } on DioError catch (e) {
      log(e.response.toString());
    }
  }
}
