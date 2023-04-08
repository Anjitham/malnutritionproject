import 'login.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




void main() => runApp(const Login());

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black
    ));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,

      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
