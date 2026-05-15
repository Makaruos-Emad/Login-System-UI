import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/custom_text_form_field.dart';
import 'package:login_system/screens/forget_password_screen.dart';
import 'package:login_system/screens/profile_screen.dart';
import 'package:login_system/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text('تسجيل الدخول')],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'أهلاً بك مجدداً، سجل دخولك للمتابعة',
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
            Text('كلمة المرور', style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "اكتب الرقم السري",
              suffixIcon: Icons.lock_outlined,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPasswordScreen(),
                  ),
                );
              },
              child: Text(
                "نسيت كلمة المرور ؟",
                style: AppTextStyle.regular16Blue,
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: "تسجيل الدخول",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                  (route) => false,
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text("إنشاء حساب", style: AppTextStyle.regular16Blue),
                ),
                const SizedBox(width: 8),
                Text("ليس لديك حساب ؟", style: AppTextStyle.regular16Grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
