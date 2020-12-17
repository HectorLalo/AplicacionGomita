
import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
 LoginPage({Key key}) : super(key: key);

  @override
   LoginPageState createState() =>  LoginPageState();
}

class  LoginPageState extends State <LoginPage> {
  
  final emailController =TextEditingController();
  final passwordController =TextEditingController();

  void login (){
    final email = emailController.text;
    final password = passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form (
          
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Correo electronico'
                  )
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  )
                ),
                 SizedBox(
                  height: 16,
                ),
                FlatButton(
                  color: Colors.red,
                  onPressed: login,
                  child: Text(
                    'hola'
                  ),
                )
              ],
               
            ),
          ),


        ),
      ),

    );
  }
}

