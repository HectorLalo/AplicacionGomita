import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login/services/login_service.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final loginService = LoginService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final scaffoldkey = GlobalKey<ScaffoldState>();

  void login() async {
    final email = emailController.text;
    final password = passwordController.text;
    try {
      await loginService.login(email, password);
    } catch (e) {
      scaffoldkey.currentState
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    controller: emailController,
                    decoration:
                        InputDecoration(hintText: 'Correo electronico')),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(hintText: 'Password')),
                SizedBox(
                  height: 16,
                ),
                FlatButton(
                  color: Colors.red,
                  onPressed: login,
                  child: Text('Iniciar Sesión'),
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: null,
                  child: Text('Registrarse'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
