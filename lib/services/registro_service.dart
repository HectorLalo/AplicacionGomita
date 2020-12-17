import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login/models/usuario_model.dart';

/*Singleton*/
class RegistroService {
  final url = 'https://ent-app-arch.herokuapp.com/api';

  static final _RegistroService = RegistroService._internal();
  factory RegistroService() => _RegistroService;
  RegistroService._internal();

  Future registro(usuario, email, telefono, password) async {
    final response = await http
        .post('$url/auth/login', body: {'name':usuario, 'email': email,'phone':telefono, 'password': password});
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
