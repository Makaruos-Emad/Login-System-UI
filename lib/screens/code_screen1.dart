import 'package:flutter/material.dart';
import 'package:login_system/screens/code_screen.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text("أدخل كود الاستعادة")],
        ),
      ),
      body: BodyEnterCodeScreen(),
    );
  }
}
