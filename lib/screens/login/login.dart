import 'package:flutter/material.dart';
//Limport 'package:login/homescreen.dart';
//import 'package:login/screens/homescreen/homescreen.dart';
import 'package:login/screens/sign_up/sign_up_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emRes = TextEditingController();
  TextEditingController PasRes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextField(
              controller: emRes,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: PasRes,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 10),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp(),));
            },
            child: Text('Log In',style: TextStyle(color: Colors.white)),)
          ],
        ),
      ),
    );
  }
}
