import 'package:comidaatupuerta/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterface.dart';

class DefaultSignInService extends SignInService {
  @override
  Future<Map<String, dynamic>> signIp(
      {required Map<String, dynamic> bodyParameters}) {
    return apiService.getDataFromPostRequest(
        bodyParameters: bodyParameters, url: endpoint);
  }
}
