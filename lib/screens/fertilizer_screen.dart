import 'package:flutter/material.dart';

class FertilizerScreen extends StatelessWidget {
  final String language;

  const FertilizerScreen({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    Map<String, List<Map<String, String>>> fertilizerData = {
      "English": [
        {"title": "Urea", "desc": "Provides nitrogen to crops."},

        {"title": "DAP", "desc": "Good for root growth."},
      ],

      "Tamil": [
        {"title": "யூரியா", "desc": "பயிர்களுக்கு நைட்ரஜன் வழங்குகிறது."},

        {"title": "DAP", "desc": "வேர் வளர்ச்சிக்கு உதவும்."},
      ],

      "Hindi": [
        {"title": "यूरिया", "desc": "फसलों को नाइट्रोजन देता है।"},

        {"title": "DAP", "desc": "जड़ों की वृद्धि के लिए अच्छा।"},
      ],

      "Kannada": [
        {"title": "ಯೂರಿಯಾ", "desc": "ಬೆಳೆಗಳಿಗೆ ನೈಟ್ರೋಜನ್ ಒದಗಿಸುತ್ತದೆ."},

        {"title": "DAP", "desc": "ಬೇರು ಬೆಳವಣಿಗೆಗೆ ಒಳ್ಳೆಯದು."},
      ],
    };

    final data = fertilizerData[language]!;

    return Scaffold(
      appBar: AppBar(title: const Text("Fertilizer Information")),

      body: ListView.builder(
        itemCount: data.length,

        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              leading: const Icon(Icons.water_drop, color: Colors.green),

              title: Text(data[index]["title"]!),

              subtitle: Text(data[index]["desc"]!),
            ),
          );
        },
      ),
    );
  }
}
