import 'package:flutter/material.dart';
import 'package:handova/models/response/login_response.dart';
import 'package:handova/models/service/auth_service/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  LoginResponse? loginResponse;
  AuthService authService = AuthService();
  Future<LoginResponse?> login({
  required String number,
  required String password,
})async {
  var data = await authService.loginUser(username: number, password: password);

  if (data!=null){
    loginResponse=data;
    notifyListeners();
    return data;
    print('invalid');
  }
  }
}