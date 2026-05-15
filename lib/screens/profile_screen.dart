import 'package:flutter/material.dart';
import 'package:login_system/core/theme/app_text_style.dart';
import 'package:login_system/core/widgets/custom_button.dart';
import 'package:login_system/screens/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الملف الشخصي'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blueAccent, width: 3),
                  ),
                  child: const CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/muller_ashraf.jpeg'),
                  ),
                ),
                const SizedBox(height: 50),
                const Text('Muller Ashraf', style: AppTextStyle.bold24Black),
                const SizedBox(height: 10),
                const Text(
                  "Flutter Developer",
                  style: AppTextStyle.regular16Grey,
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
                  ),

                  child: Column(
                    children: [
                      profileTile(Icons.email, "muller@gmail.com"),
                      const Divider(),
                      profileTile(Icons.phone, "+20 109 999 9999"),
                      const Divider(),
                      profileTile(Icons.cake, "12 May 2004"),
                      const Divider(),
                      profileTile(Icons.person, "Male"),
                    ],
                  ),
                ),
                const Spacer(),
                CustomButton(
                  text: "تسجيل الخروج",
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget profileTile(IconData icon, String title) {
  return Row(
    children: [
      Icon(icon, color: Colors.blueAccent),
      const SizedBox(width: 14),
      Text(title, style: const TextStyle(fontSize: 15)),
    ],
  );
}
