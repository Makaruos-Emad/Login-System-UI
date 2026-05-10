import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyle.bold24Black),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.arrow_forward_outlined,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
