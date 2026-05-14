import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/screens/login_screen.dart';
import 'package:login_system/screens/start_page.dart';

class LoginSystem extends StatelessWidget {
  const LoginSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF7F8FA),
          elevation: 0,
          titleTextStyle: AppTextStyle.bold24Black,
        ),
        scaffoldBackgroundColor: Color(0xFFF7F8FA),
      ),
      home: StartPage(),
    );
  }
}
