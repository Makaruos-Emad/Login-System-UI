import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/custom_text_form_field.dart';
import 'package:login_system/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text("إنشاء حساب جديد")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "أدخل بياناتك لإنشاء حساب جديد والبدء",
              style: AppTextStyle.regular16Grey,
            ),
            const SizedBox(height: 32),
            Text("الاسم بالكامل", style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "مكاريوس عماد",
              suffixIcon: Icons.person_outline,
            ),
            const SizedBox(height: 16),
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
              hintText: "••••••••",
              suffixIcon: Icons.lock_outlined,
              isPassword: true,
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {},
              child: Text(
                "يجب أن تحتوي على 8 أحرف على الأقل",
                style: AppTextStyle.regular16Grey,
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(text: "إنشاء حساب"),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    "تسجيل الدخول",
                    style: AppTextStyle.regular16Blue,
                  ),
                ),
                const SizedBox(width: 8),
                Text("عندك حساب بالفعل؟ ", style: AppTextStyle.regular16Grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
