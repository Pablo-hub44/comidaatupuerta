import 'package:comidaatupuerta/src/Base/ApiService/ApiService.dart';

abstract class BaseFirebaseService {
  ApiService apiService = DefaultApiService();
  static String baseUrl = "https://identitytoolkit.googleapis.com/v1/";
  static String signUpEndpoint = "accounts:signUp?key=";
  static String signInEndpoint = "accounts:signInWithPassword?key=";
  static String adminToken = "AIzaSyC1VgZoNXIwkzdlX-22I1HQ8ZVP_HTE2JE";
}

//nuestras interfaces
abstract class SignUpService extends BaseFirebaseService {
  String endpoint = BaseFirebaseService.baseUrl +
      BaseFirebaseService.signUpEndpoint +
      BaseFirebaseService.adminToken;
  Future<Map<String, dynamic>> signUp(
      {required Map<String, dynamic> bodyParameters});
}

abstract class SignInService extends BaseFirebaseService {
  String endpoint = BaseFirebaseService.baseUrl +
      BaseFirebaseService.signInEndpoint +
      BaseFirebaseService.adminToken;
  Future<Map<String, dynamic>> signIp(
      {required Map<String, dynamic> bodyParameters});
}
