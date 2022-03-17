import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login Screen",
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailTEC  = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("HurLoginApp"),
        actions: const [
          Icon(Icons.account_circle),
        ],
        backgroundColor: Color(0xFF333333),
        shadowColor: Color(0xFF333333),
      ),
      resizeToAvoidBottomInset : false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
            backgroundImage: AssetImage("Assets/img/hur.jpg"),
            ),
            const SizedBox(
              height: 20 ,
            ),
             TextField(
              controller: _emailTEC ,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: "Enter Email",
              ),
            ),
            const SizedBox(
              height: 20 ,
            ),
             TextField(
              controller: _passwordTEC ,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                hintText: "Enter Password",
              ),
            ),
            const SizedBox(
              height: 20 ,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  var Email = _emailTEC.text;
                  var Password = _passwordTEC.text;
                  print("Email : " + Email);
                  print("Password : " + Password);
                }, child: const Text("Login")),
                const SizedBox(
                  width: 18,
                ),
                OutlineButton(onPressed: (){}, child: const Text("Signup"),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
