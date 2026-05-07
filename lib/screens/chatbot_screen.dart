import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final FlutterTts flutterTts = FlutterTts();
  late stt.SpeechToText speech;

  bool isListening = false;

  String userText = "Tap mic and speak";
  String botReply = "";

  @override
  void initState() {
    super.initState();
    speech = stt.SpeechToText();
  }

  Future<void> startListening() async {
    bool available = await speech.initialize();

    if (available) {
      setState(() {
        isListening = true;
      });

      speech.listen(
        onResult: (result) {
          setState(() {
            userText = result.recognizedWords;
          });

          generateReply(userText);
        },
      );
    }
  }

  Future<void> stopListening() async {
    await speech.stop();

    setState(() {
      isListening = false;
    });
  }

  void generateReply(String text) async {
    String reply = "";

    if (text.toLowerCase().contains("fertilizer")) {
      reply = "Use organic fertilizer and maintain proper watering.";
    } else if (text.toLowerCase().contains("disease")) {
      reply = "Your crop may have leaf disease. Use fungicide spray.";
    } else if (text.toLowerCase().contains("weather")) {
      reply = "Heavy rain expected this week. Protect your crops.";
    } else {
      reply = "Sorry, I could not understand. Please try again.";
    }

    setState(() {
      botReply = reply;
    });

    await flutterTts.speak(reply);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Chatbot"),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Text(userText, style: const TextStyle(fontSize: 18)),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Text(botReply, style: const TextStyle(fontSize: 18)),
            ),

            const Spacer(),

            GestureDetector(
              onTap: () {
                if (isListening) {
                  stopListening();
                } else {
                  startListening();
                }
              },

              child: CircleAvatar(
                radius: 40,
                backgroundColor: isListening ? Colors.red : Colors.green,

                child: Icon(
                  isListening ? Icons.mic : Icons.mic_none,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
