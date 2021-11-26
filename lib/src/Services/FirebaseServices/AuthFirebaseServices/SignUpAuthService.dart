import 'package:comidaatupuerta/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterface.dart';

class DefaultSignUpService extends SignUpService {
  @override
  Future<Map<String, dynamic>> signUp(
      {required Map<String, dynamic> bodyParameters}) {
    return apiService.getDataFromPostRequest(
        bodyParameters: bodyParameters, url: endpoint);
  }
}
