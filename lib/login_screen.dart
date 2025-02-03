import 'package:flutter/material.dart';
import 'my_custom_painter.dart';
import 'login_singin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF3F51B5),
              border: Border.all(color: Colors.black),
            ),
          ),
          BatmanCon(),
          LoginSignin()
        ],
      ),
    );
  }
}
