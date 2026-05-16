import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/pin_put.dart';
import 'package:login_system/screens/new_password_screen.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
   GlobalKey<FormState> fromKey = GlobalKey();
  String? otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [const Text("أدخل كود الاستعادة")],
        ),
      ),
      body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: fromKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            textDirection: TextDirection.ltr,
            children: [
              Text("تم ارسال كود التحقق ", style: AppTextStyle.regular16Grey),
              SizedBox(height: 40),
              Directionality(
                textDirection: TextDirection.ltr,
                child: CustomPinPut(
                  onCompleted: (value) {
                    setState(() {
                      otp = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "إعادة الإرسال",
                      style: AppTextStyle.regular16Blue,
                    ),
                  ),
                  Text("لم يصلك الكود؟", style: AppTextStyle.regular16Grey),
                ],
              ),
              SizedBox(height: 40),
              CustomButton(
                text: "تحقق",
                onPressed: () {
                  if (fromKey.currentState!.validate()) {
                     Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewPasswordScreen(),
                    ),
                    (route) => false,
                  );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
