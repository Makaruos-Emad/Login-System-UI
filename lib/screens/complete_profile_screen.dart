import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/custom_text_form_field.dart';
import 'package:login_system/screens/profile_screen.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text("اكمل بينات حسابك")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "أدخل بياناتك لإنشاء حساب جديد",
              style: AppTextStyle.regular16Grey,
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent, width: 3),
                ),
                child: const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/muller_ashraf.jpeg'),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text("الوظيفه", style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "مهندس برمجيات",
              suffixIcon: Icons.work_outline,
            ),
            const SizedBox(height: 16),
            Text('رقم التليفون', style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "+20 109 999 9999",
              suffixIcon: Icons.phone_outlined,
            ),
            const SizedBox(height: 16),
            Text("تاريخ الميلاد", style: AppTextStyle.regular16Grey),
            const SizedBox(height: 8),
            CustomTextFormField(
              hintText: "12/3/2004",
              suffixIcon: Icons.cake_outlined,
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: "إنشاء حساب",
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
          ],
        ),
      ),
    );
  }
}
