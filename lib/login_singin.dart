import 'package:flutter/material.dart';

class LoginSignin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginSigninState();
}

class _LoginSigninState extends State<LoginSignin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isSignInActive = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, right: 20.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(40, 10),
                  bottomLeft: Radius.elliptical(40, 10),
                  topRight: Radius.elliptical(100, 90),
                  bottomRight: Radius.elliptical(100, 90),
                ),
              ),
              height: 350,
              width: 370,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontFamily: 'nyashasans'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontFamily: 'nyashasans'),
                      labelText: 'Пароль',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AnimatedContainer(
                          duration: Duration(
                              milliseconds: 250), // Длительность анимации
                          decoration: BoxDecoration(
                            color: isSignInActive
                                ? Colors.black
                                : const Color.fromARGB(109, 32, 55, 131),
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isSignInActive =
                                    true; // Активируем кнопку Signin
                              });
                            },
                            child: Text(
                              'Signin',
                              style: TextStyle(
                                fontFamily: 'nyashasans',
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.0,
                                  horizontal:
                                      24.0), // Увеличиваем размер кнопки
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0), // Отступ перед кнопкой
                        AnimatedContainer(
                          duration: Duration(
                              milliseconds: 250), // Длительность анимации
                          decoration: BoxDecoration(
                            color: isSignInActive
                                ? const Color.fromARGB(109, 32, 55, 131)
                                : Colors.black,
                            border: Border.all(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isSignInActive =
                                    false; // Активируем кнопку Login
                              });
                              String email = _emailController.text;
                              String password = _passwordController.text;
                              print('Email: $email, Password: $password');
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'nyashasans',
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.0,
                                  horizontal:
                                      24.0), // Увеличиваем размер кнопки
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
