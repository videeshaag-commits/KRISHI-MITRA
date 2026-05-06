import 'package:flutter/material.dart';

import 'voice_screen.dart';
import 'upload_screen.dart';
import 'history_screen.dart';
import 'disease_screen.dart';
import 'pests_screen.dart';
import 'fertilizer_screen.dart';
import 'weather_screen.dart';
import 'chatbot_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selectedLanguage = "English";

  Map<String, Map<String, String>> translations = {

    "English": {

      "hello": "Hello Farmer! 👋",
      "assist": "How can we assist you today?",

      "speak": "Speak",
      "upload": "Upload",

      "disease": "Disease",
      "pests": "Pests",
      "fertilizer": "Fertilizer",
      "weather": "Weather",

      "quick": "Quick Access",
    },

    "Hindi": {

      "hello": "नमस्ते किसान 👋",
      "assist": "आज हम आपकी कैसे मदद करें?",

      "speak": "बोलें",
      "upload": "अपलोड",

      "disease": "रोग",
      "pests": "कीट",
      "fertilizer": "उर्वरक",
      "weather": "मौसम",

      "quick": "त्वरित सुविधा",
    },

    "Kannada": {

      "hello": "ನಮಸ್ಕಾರ ರೈತ 👋",
      "assist": "ಇಂದು ನಾವು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?",

      "speak": "ಮಾತನಾಡಿ",
      "upload": "ಅಪ್‌ಲೋಡ್",

      "disease": "ರೋಗ",
      "pests": "ಕೀಟಗಳು",
      "fertilizer": "ರಸಗೊಬ್ಬರ",
      "weather": "ಹವಾಮಾನ",

      "quick": "ತ್ವರಿತ ಪ್ರವೇಶ",
    },

    "Tamil": {

      "hello": "வணக்கம் விவசாயி 👋",
      "assist": "இன்று எவ்வாறு உதவலாம்?",

      "speak": "பேசு",
      "upload": "பதிவேற்று",

      "disease": "நோய்",
      "pests": "பூச்சி",
      "fertilizer": "உரம்",
      "weather": "வானிலை",

      "quick": "விரைவு அணுகல்",
    },
  };

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.green,

        child: const Icon(Icons.chat),

        onPressed: () {

          Navigator.push(
            context,

            MaterialPageRoute(
              builder: (context) =>
                  const ChatbotScreen(),
            ),
          );
        },
      ),

      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,

        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),

        centerTitle: true,

        title: const Text(
          "Krishi Mitra",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [

          DropdownButton<String>(

            value: selectedLanguage,

            underline: Container(),

            items: const [

              DropdownMenuItem(
                value: "English",
                child: Text("EN"),
              ),

              DropdownMenuItem(
                value: "Hindi",
                child: Text("HI"),
              ),

              DropdownMenuItem(
                value: "Kannada",
                child: Text("KN"),
              ),

              DropdownMenuItem(
                value: "Tamil",
                child: Text("TA"),
              ),
            ],

            onChanged: (value) {

              setState(() {

                selectedLanguage = value!;
              });
            },
          ),

          IconButton(

            icon: const Icon(
              Icons.history,
              color: Colors.black,
            ),

            onPressed: () {

              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      const HistoryScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Text(

              translations[selectedLanguage]!["hello"]!,

              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(

              translations[selectedLanguage]!["assist"]!,

              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Row(

              children: [

                Expanded(

                  child: GestureDetector(

                    onTap: () {

                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) =>
                              const VoiceScreen(),
                        ),
                      );
                    },

                    child: featureCard(

                      Icons.mic,

                      translations[selectedLanguage]!["speak"]!,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                Expanded(

                  child: GestureDetector(

                    onTap: () {

                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) =>
                              const UploadScreen(),
                        ),
                      );
                    },

                    child: featureCard(

                      Icons.camera_alt,

                      translations[selectedLanguage]!["upload"]!,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Text(

              translations[selectedLanguage]!["quick"]!,

              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Row(

              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

              children: [

                GestureDetector(

                  onTap: () {

                    Navigator.push(
                      context,

                      MaterialPageRoute(

                        builder: (context) =>

                            DiseaseScreen(
                              language: selectedLanguage,
                            ),
                      ),
                    );
                  },

                  child: quickItem(

                    Icons.eco,

                    translations[selectedLanguage]!["disease"]!,
                  ),
                ),

                GestureDetector(

                  onTap: () {

                    Navigator.push(
                      context,

                      MaterialPageRoute(

                        builder: (context) =>

                            PestsScreen(
                              language: selectedLanguage,
                            ),
                      ),
                    );
                  },

                  child: quickItem(

                    Icons.bug_report,

                    translations[selectedLanguage]!["pests"]!,
                  ),
                ),

                GestureDetector(

                  onTap: () {

                    Navigator.push(
                      context,

                      MaterialPageRoute(

                        builder: (context) =>

                            FertilizerScreen(
                              language: selectedLanguage,
                            ),
                      ),
                    );
                  },

                  child: quickItem(

                    Icons.water_drop,

                    translations[selectedLanguage]!["fertilizer"]!,
                  ),
                ),

                GestureDetector(

                  onTap: () {

                    Navigator.push(
                      context,

                      MaterialPageRoute(

                        builder: (context) =>

                            WeatherScreen(
                              language: selectedLanguage,
                            ),
                      ),
                    );
                  },

                  child: quickItem(

                    Icons.cloud,

                    translations[selectedLanguage]!["weather"]!,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget featureCard(
    IconData icon,
    String title,
  ) {

    return Container(

      height: 180,

      decoration: BoxDecoration(

        color: Colors.green.shade50,

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Column(

        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          CircleAvatar(

            radius: 35,
            backgroundColor: Colors.green,

            child: Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
          ),

          const SizedBox(height: 15),

          Text(

            title,

            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget quickItem(
    IconData icon,
    String title,
  ) {

    return Container(

      width: 80,
      height: 80,

      decoration: BoxDecoration(

        color: Colors.green.shade50,

        borderRadius:
            BorderRadius.circular(15),
      ),

      child: Column(

        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            color: Colors.green,
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}