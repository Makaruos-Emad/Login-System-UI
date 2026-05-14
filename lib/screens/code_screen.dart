import 'package:flutter/material.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/core/widgets/pin_put.dart';

class BodyEnterCodeScreen extends StatefulWidget {
  const BodyEnterCodeScreen({super.key});

  @override
  State<BodyEnterCodeScreen> createState() => _BodyEnterCodeScreenState();
}

class _BodyEnterCodeScreenState extends State<BodyEnterCodeScreen> {
  GlobalKey<FormState> fromKey = GlobalKey();
  String? otp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Form(
          key: fromKey,
          child: Column(
            textDirection: TextDirection.ltr,
            children: [
              Center(
                child: Text(
                  "تم ارسال كود التحقق ",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 60),
              Directionality(
                textDirection: TextDirection.ltr,
                child: CustomPinPut(
                  onCompleted: (value) {
                    otp = value;
                  },
                ),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "إعادة الإرسال",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                  Text("لم يصلك الكود؟"),
                ],
              ),

              SizedBox(height: 40),

              CustomButton(text: "تحقق", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
