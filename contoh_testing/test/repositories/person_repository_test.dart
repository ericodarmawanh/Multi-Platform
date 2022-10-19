import 'dart:io';

import 'package:contoh_testing/repositories/person_repository.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'person_repository_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  test('Test Person Sukses', () async {
    Dio dio = MockDio();

    when(dio.post('lalala.com/person/create', data: {'name': 'Joko'}))
        .thenAnswer((_) => Future.value(Response(
            statusCode: HttpStatus.ok,
            data: {
              'data': {'id': 123, 'name': 'Joko'}
            },
            requestOptions: RequestOptions(path: 'lalala.com/person/create'))));

    var personResult = await PersonRepository(dio: dio).createNewPerson('Joko');

    personResult.whenOrNull(
      success: (person) {
        expect(person, isNotNull);
        expect(person.name, equals('Joko'));
        expect(person.id, isPositive);
      },
    );
  });

  test('Test Person Gagal', () async {
    Dio dio = MockDio();

    when(dio.post('lalala.com/person/create', data: {'name': '123'})).thenThrow(
        DioError(
            response: Response(
                statusCode: HttpStatus.badRequest,
                data: {'message': 'Name tidak boleh ada angka'},
                requestOptions:
                    RequestOptions(path: 'lalala.com/person/create')),
            requestOptions: RequestOptions(path: 'lalala.com/person/create')));

    var personResult = await PersonRepository(dio: dio).createNewPerson('123');

    personResult.whenOrNull(
      failed: (message) {
        expect(message, isNotNull);
        expect(message, equals('Name tidak boleh ada angka'));
      },
    );
  });
}
