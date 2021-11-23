import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'AppError.dart';

abstract class _Exceptions {
  static String socketExceptionMessage = "No Internet connection";
  static String httpException = "No se pudo encontrar el path";
  static String formatException = "Mal respuesta de formato";
}

abstract class ApiService {
  //llamada del post(es para poner nuevas cosas en la base de datos)
  Future<Map<String, dynamic>> getDataFromPostRequest(
      {required Map<String, dynamic> bodyParameters,
      required String url,
      Map<String, String>? headers});
  //llamada del put(el put es para actualizar)
  Future<Map<String, dynamic>> getDataFromPutRequest(
      {required Map<String, dynamic> bodyParameters,
      required String url,
      Map<String, String>? headers});
  //llamada del GET(get es para obtener)
  Future<Map<String, dynamic>> getDataFromGetRequest(
      {/*required Map<String, dynamic> bodyParameters,*/
      required String url,
      Map<String, String>? headers});
}

class DefaultApiService extends ApiService {
  //---
  @override
  Future<Map<String, dynamic>> getDataFromGetRequest(
      {required String url, Map<String, String>? headers}) async {
    var _url = Uri.parse(url);
    final response = await http.get(_url, headers: headers);

    try {
      if (response.statusCode.toString().contains('20')) {
        //fue bien la llamada
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        //tuvo un error la llamada
        throw FailError.fromBody(body: response.body);
      } //cuando se dice exepcion piensa que es un error
    } on SocketException {
      throw FailError.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw FailError.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw FailError.fromMessage(message: _Exceptions.formatException);
    }
  }

  //---
  @override
  Future<Map<String, dynamic>> getDataFromPostRequest(
      {required Map<String, dynamic> bodyParameters,
      required String url,
      Map<String, String>? headers}) async {
    var _url = Uri.parse(url);
    final body = json.encode(bodyParameters);
    final response = await http.post(_url, headers: headers, body: body);

    try {
      //TODO: Revisar este if con el contains
      if (response.statusCode.toString().contains('20')) {
        //fue bien la llamada
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        //tuvo un error la llamada
        throw FailError.fromBody(body: response.body);
      } //cuando se dice exepcion piensa que es un error
    } on SocketException {
      throw FailError.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw FailError.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw FailError.fromMessage(message: _Exceptions.formatException);
    }
  }

  //---
  @override
  Future<Map<String, dynamic>> getDataFromPutRequest(
      {required Map<String, dynamic> bodyParameters,
      required String url,
      Map<String, String>? headers}) async {
    var _url = Uri.parse(url);
    final body = json.encode(bodyParameters);
    final response = await http.put(_url, headers: headers, body: body);

    try {
      //TODO: Revisar este if con el contains
      if (response.statusCode.toString().contains('20')) {
        //fue bien la llamada
        var jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        //tuvo un error la llamada
        throw FailError.fromBody(body: response.body);
      } //cuando se dice exepcion piensa que es un error
    } on SocketException {
      throw FailError.fromMessage(message: _Exceptions.socketExceptionMessage);
    } on HttpException {
      throw FailError.fromMessage(message: _Exceptions.httpException);
    } on FormatException {
      throw FailError.fromMessage(message: _Exceptions.formatException);
    }
  }
}
