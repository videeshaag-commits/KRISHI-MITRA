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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              const SizedBox(height: 20),

              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.green.shade100,

                child: const Icon(Icons.person, size: 60, color: Colors.green),
              ),

              const SizedBox(height: 20),

              const Text(
                "Farmer Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                "Smart Farming Assistant User",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 30),

              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),

                  title: Text("Phone Number"),

                  subtitle: Text("+91 9876543210"),
                ),
              ),

              const SizedBox(height: 15),

              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.location_on, color: Colors.green),

                  title: Text("Location"),

                  subtitle: Text("Karnataka, India"),
                ),
              ),

              const SizedBox(height: 15),

              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.agriculture, color: Colors.green),

                  title: Text("Farm Type"),

                  subtitle: Text("Rice Farming"),
                ),
              ),

              const SizedBox(height: 15),

              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: const ListTile(
                  leading: Icon(Icons.eco, color: Colors.green),

                  title: Text("Experience"),

                  subtitle: Text("5 Years Farming Experience"),
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () {},

                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
