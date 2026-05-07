import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class VoiceScreen extends StatefulWidget {
  const VoiceScreen({super.key});

  @override
  State<VoiceScreen> createState() => _VoiceScreenState();
}

class _VoiceScreenState extends State<VoiceScreen> {
  late stt.SpeechToText speech;

  bool isListening = false;

  String spokenText = "Tap mic and start speaking";

  @override
  void initState() {
    super.initState();

    speech = stt.SpeechToText();
  }

  void startListening() async {
    bool available = await speech.initialize();

    if (available) {
      setState(() {
        isListening = true;
      });

      speech.listen(
        localeId: "en_IN",

        onResult: (result) {
          setState(() {
            spokenText = result.recognizedWords;
          });
        },
      );
    }
  }

  void stopListening() async {
    await speech.stop();

    setState(() {
      isListening = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Voice Assistant")),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              GestureDetector(
                onTap: () {
                  if (isListening) {
                    stopListening();
                  } else {
                    startListening();
                  }
                },

                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.green.shade100,

                  child: Icon(
                    isListening ? Icons.mic : Icons.mic_none,
                    size: 70,
                    color: Colors.red,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Text(
                isListening ? "Listening..." : "Tap to Speak",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                spokenText,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
