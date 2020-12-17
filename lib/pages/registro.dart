import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  //usuario
  //email
  //telefono
  //password
  final usuarioController = TextEditingController();
  final emailController = TextEditingController();
  final telefonoController = TextEditingController();
  final passwordController = TextEditingController();

  void registro(){
    final usuario = usuarioController.text;
    final email = emailController.text; 
    final telefono = telefonoController.text;
    final password = passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Form(
           child: Padding(
             padding: const EdgeInsets.all(18.0),
             child: Column(
               children: [
                 TextFormField(
                   controller: usuarioController,
                   decoration: InputDecoration(
                     hintText: 'Nombre del usuario'
                   )
                 ),
                 TextFormField(
                   controller: emailController,
                   decoration: InputDecoration(
                     hintText:'Correo electronico'
                   )
                 ),
                 TextFormField(
                   controller: telefonoController,
                   decoration: InputDecoration(
                     hintText:'Telefono del usuario'
                   )
                 ),
                 TextFormField(
                   controller: passwordController,
                   decoration: InputDecoration(
                     hintText:'Contraseña del usuario'
                   )
                 ),
                 FlatButton(
                   color: Colors.red,
                   onPressed: registro,
                   child: Text('Registrar'),
                   ),
               ],)
           )
         )

       )
    );
  }
}