import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:revision/home_screen.dart';
// import 'package:revision/login_screen.dart';
// import 'package:revision/counter_screen.dart';
import 'package:revision/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
