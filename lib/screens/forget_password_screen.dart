import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/custom_text_form_field.dart';
import 'package:login_system/screens/code_screen1.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text("نسيت كلمة المرور؟")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "اكتب إيميلك وهنبعتلك كود عشان تغير الباسوورد",
              style: AppTextStyle.regular16Grey,
            ),
            const SizedBox(height: 32),
            Text('البريد الإلكتروني', style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "example@mail.com",
              suffixIcon: Icons.email_outlined,
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: "إرسال الكود",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CodeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
