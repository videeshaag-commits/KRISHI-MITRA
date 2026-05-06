import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.green,

              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),

            const SizedBox(height: 20),

            const Text(
              "Farmer Name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "farmer@gmail.com",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),

              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.language, color: Colors.green),
                    title: Text("Language"),
                    trailing: Text("English"),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(Icons.history, color: Colors.green),
                    title: Text("Analysis History"),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
