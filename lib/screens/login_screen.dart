import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            const TextField(
              decoration: InputDecoration(
                labelText: "Phone Number",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const HomeScreen(),
                  ),
                );
              },

              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}