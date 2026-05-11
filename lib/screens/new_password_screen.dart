import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/custom_text_form_field.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text("كلمة مرور جديدة")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "قم بتعيين كلمة مرور جديدة وقوية لحسابك",
              style: AppTextStyle.regular16Grey,
            ),
            const SizedBox(height: 32),
            Text("كلمة المرور الجديدة", style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "••••••••",
              suffixIcon: Icons.lock_outlined,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            Text(
              "تأكيد كلمة المرور الجديدة",
              style: AppTextStyle.regular16Grey,
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "••••••••",
              suffixIcon: Icons.lock_outlined,
              isPassword: true,
            ),
            const SizedBox(height: 16),
            CustomButton(text: "حفظ كلمة المرور"),
          ],
        ),
      ),
    );
  }
}
