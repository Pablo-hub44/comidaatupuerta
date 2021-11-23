import 'dart:convert';

class FailError {
  String? message;
  Map<String, dynamic> error = {};

  @override
  String toString() => message ?? "";

  FailError.fromMessage({String? message}) {
    this.message = message;
  }

  FailError.fromBody({required String body}) {
    var jsonData = jsonDecode(body);
    this.error = jsonData;
  }
}
