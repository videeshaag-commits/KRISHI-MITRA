import 'package:flutter/material.dart';
import 'home_screen.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Icon(
                Icons.language,
                size: 100,
                color: Colors.green,
              ),

              const SizedBox(height: 30),

              const Text(
                "Choose Language",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 50),

              languageButton(
                context,
                "English",
              ),

              const SizedBox(height: 20),

              languageButton(
                context,
                "ಕನ್ನಡ",
              ),

              const SizedBox(height: 20),

              languageButton(
                context,
                "தமிழ்",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget languageButton(
    BuildContext context,
    String title,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 60,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },

        child: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}