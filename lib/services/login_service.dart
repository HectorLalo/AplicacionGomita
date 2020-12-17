import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login/models/usuario_model.dart';

/*Singleton*/
class LoginService {
  final url = 'https://ent-app-arch.herokuapp.com/api';

  static final _loginService = LoginService._internal();
  factory LoginService() => _loginService;
  LoginService._internal();

  Future login(email, password) async {
    final response = await http
        .post('$url/auth/login', body: {'email': email, 'password': password});
    final resp = json.decode(response.body);
    if (response.statusCode == 200) {
      final accessToken = resp['accessToken'];
      final authenticatedUser = User.fromJson(resp['authenticatedUser']);
    } else {
      throw ('Usuario y/o Contraseña incorrectos');
    }
    print(response.body);
  }
}
