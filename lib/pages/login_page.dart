import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 118, 211, 121),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Container(
              margin: EdgeInsets.only(top:20),
              width: 200,
              height: 200,
              child:const Icon(
                Icons.person,
                size: 125,
                color: Color.fromARGB(78, 118, 211, 121),

              ),
              color: Colors.amber,),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity, 
              margin: EdgeInsets.symmetric(horizontal: 30),
              color:Colors.blue,
              height: 20,
              alignment: Alignment.center,
              child: Text("Informe seu email")),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity, 
              margin: EdgeInsets.symmetric(horizontal: 30),
              color:Colors.blue,
              height: 20,
              alignment: Alignment.center,
              child: Text("Informe a senha")),
            Expanded(
              child: SizedBox(
                height: 10,
            )),
            Container(
              height: 20,
              alignment: Alignment.center,
              color: Colors.amber,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical:15),

              child: Text("Login")),
            Container(
              child: Text("Registrar"),
              margin: EdgeInsets.symmetric(horizontal: 30, vertical:15),
)
          ]
        ),
      ),
    );
  }
}