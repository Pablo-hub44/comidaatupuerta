import 'package:comidaatupuerta/src/Base/ApiService/ApiService.dart';
import 'package:flutter_test/flutter_test.dart';

import 'Mocks/TestApiMocks.dart';

abstract class _Constants {
  static Map<String, String> defaultHeaders = {
    'Content-type': 'application/json; charset=UTF-8'
  };
  static String postEndpoint = "https://jsonplaceholder.typicode.com/posts";
  static String getEndPoint = "https://jsonplaceholder.typicode.com/posts/1";
  static String putEndpoint = "https://jsonplaceholder.typicode.com/posts/1";
}

void main() {
  //esta es la que vamos a testear
  final ApiService _testApiService = DefaultApiService();

  //Test correct Connection of Api Servicee
  group('Test correct Connection of Api Service', () {
    //Test correct post connection to jsonplaceeholder
    test('Test correct post connection to jsonplaceeholder', () async {
      final bodyParams =
          CorrectPostBodyParams(title: 'foo', body: 'bar', userId: 1);
      final result = await _testApiService.getDataFromPostRequest(
          bodyParameters: bodyParams.toMap(),
          url: _Constants.postEndpoint,
          headers: _Constants.defaultHeaders);

      expect(result, Map.from(result));
    });
    //Test correct get connection to json placeholder
    test('Test correct get connection to json placeholder', () async {
      final result = await _testApiService.getDataFromGetRequest(
          url: _Constants.getEndPoint);

      expect(result, Map.from(result));
    });

    //test correct put connection to jsonplaceholder
    test('Test correct put connection to json placeholder', () async {
      final body =
          CorrectPutBodyParams(id: 1, title: 'foo', body: 'bar', userId: 1);
      final result = await _testApiService.getDataFromPutRequest(
          bodyParameters: body.toMap(),
          url: _Constants.putEndpoint,
          headers: _Constants.defaultHeaders);

      expect(result, Map.from(result));
    });
  });
}
