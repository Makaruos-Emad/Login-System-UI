import 'package:flutter/material.dart';
import 'package:login_system/screens/login_screen.dart';

class LoginSystem extends StatelessWidget {
  const LoginSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF7F8FA)),
      home: LoginScreen(),
    );
  }
}
