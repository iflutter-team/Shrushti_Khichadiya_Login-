import 'package:flutter/material.dart';
import 'package:login/screens/homescreen/homescreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameRes = TextEditingController();
  TextEditingController emailRes = TextEditingController();
  TextEditingController passRes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextField(
              controller: nameRes,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailRes,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 10),
            TextField(
              controller:passRes,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 10),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home(),));
              },
              child: Text('Sign Up',style: TextStyle(color: Colors.white)),)
          ],
        ),
      ),
    );
  }
}
