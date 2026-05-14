import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Profile Image
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blueAccent, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 12,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/muller_ashraf.jpeg'),
                  ),
                ),

                const SizedBox(height: 100),

                const Text(
                  'Muller Ashraf',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on, color: Colors.grey, size: 20),
                    SizedBox(width: 6),
                    Text(
                      'sohag, Egypt',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                // Phone
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10),
                      ],
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
                ),

                const SizedBox(height: 25),
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
