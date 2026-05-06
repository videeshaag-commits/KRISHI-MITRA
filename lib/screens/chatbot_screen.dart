import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chatbot"),
        backgroundColor: Colors.green,
      ),

      body: const Center(
        child: Text("Voice Chatbot Working ✅", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
