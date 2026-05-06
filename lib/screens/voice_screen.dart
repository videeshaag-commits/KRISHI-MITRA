import 'package:flutter/material.dart';

class VoiceScreen extends StatefulWidget {
  const VoiceScreen({super.key});

  @override
  State<VoiceScreen> createState() => _VoiceScreenState();
}

class _VoiceScreenState extends State<VoiceScreen> {
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FFF4),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        iconTheme: const IconThemeData(color: Colors.black),

        title: const Text(
          "Voice Assistant",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),

              width: isListening ? 180 : 150,
              height: isListening ? 180 : 150,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.shade100,
              ),

              child: IconButton(
                onPressed: () {
                  setState(() {
                    isListening = !isListening;
                  });
                },

                icon: Icon(
                  Icons.mic,
                  size: 70,
                  color: isListening ? Colors.red : Colors.green,
                ),
              ),
            ),

            const SizedBox(height: 40),

            Text(
              isListening ? "Listening..." : "Tap to Speak",

              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),

              child: Text(
                "Describe your crop problem using voice input",
                textAlign: TextAlign.center,

                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
