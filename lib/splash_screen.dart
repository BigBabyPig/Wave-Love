import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

//создание класса для отображения заставки
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, loginPan);
  }

  // функция перехода к логину
  loginPan() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

// отображение картинки
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xFF3F51B5)),
          ),
          Center(
            child: Container(
              child: Image.asset('images/rb_6820.png'),
            ),
          )
        ],
      ),
    );
  }
}
