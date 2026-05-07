import 'package:flutter/material.dart';

class DiseaseScreen extends StatefulWidget {
  final String language;

  const DiseaseScreen({super.key, required this.language});

  @override
  State<DiseaseScreen> createState() => _DiseaseScreenState();
}

class _DiseaseScreenState extends State<DiseaseScreen> {
  Map<String, List<Map<String, String>>> data = {
    "English": [
      {"title": "Leaf Blight", "desc": "Caused by fungus in humid conditions."},

      {"title": "Brown Spot", "desc": "Common disease affecting rice leaves."},
    ],

    "Hindi": [
      {
        "title": "लीफ ब्लाइट",
        "desc": "नमी वाली परिस्थितियों में फंगस के कारण।",
      },

      {
        "title": "ब्राउन स्पॉट",
        "desc": "धान की पत्तियों को प्रभावित करने वाली बीमारी।",
      },
    ],

    "Kannada": [
      {
        "title": "ಲೀಫ್ ಬ್ಲೈಟ್",
        "desc": "ಆರ್ದ್ರ ಪರಿಸ್ಥಿತಿಯಲ್ಲಿ ಹುಳೆಯಿಂದ ಉಂಟಾಗುತ್ತದೆ.",
      },

      {"title": "ಬ್ರೌನ್ ಸ್ಪಾಟ್", "desc": "ಅಕ್ಕಿ ಎಲೆಗಳಿಗೆ ಬರುವ ಸಾಮಾನ್ಯ ರೋಗ."},
    ],
  };

  @override
  Widget build(BuildContext context) {
    List diseases = data[widget.language] ?? data["English"]!;

    return Scaffold(
      appBar: AppBar(title: const Text("Disease Information")),

      body: ListView.builder(
        itemCount: diseases.length,

        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              leading: const Icon(Icons.eco, color: Colors.green),

              title: Text(diseases[index]["title"]),

              subtitle: Text(diseases[index]["desc"]),
            ),
          );
        },
      ),
    );
  }
}
