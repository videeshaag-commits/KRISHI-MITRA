import 'package:flutter/material.dart';

class PestsScreen extends StatelessWidget {

  final String language;

  const PestsScreen({
    super.key,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {

    Map<String, List<Map<String, String>>> pestsData = {

      "English": [

        {
          "title": "Stem Borer",
          "desc": "Damages rice stems."
        },

        {
          "title": "Aphids",
          "desc": "Small insects affecting crops."
        },
      ],

      "Tamil": [

        {
          "title": "தண்டு பூச்சி",
          "desc": "நெல் தண்டுகளை சேதப்படுத்தும்."
        },

        {
          "title": "அஃபிட்ஸ்",
          "desc": "பயிர்களை பாதிக்கும் சிறிய பூச்சிகள்."
        },
      ],

      "Hindi": [

        {
          "title": "स्टेम बोरर",
          "desc": "धान के तनों को नुकसान पहुंचाता है।"
        },

        {
          "title": "एफिड्स",
          "desc": "फसलों को प्रभावित करने वाले छोटे कीड़े।"
        },
      ],

      "Kannada": [

        {
          "title": "ಕಾಂಡ ಕೊರೆತ",
          "desc": "ಅಕ್ಕಿ ಕಾಂಡಗಳನ್ನು ಹಾನಿಗೊಳಿಸುತ್ತದೆ."
        },

        {
          "title": "ಆಫಿಡ್ಸ್",
          "desc": "ಬೆಳೆಗಳಿಗೆ ಹಾನಿ ಮಾಡುವ ಸಣ್ಣ ಕೀಟಗಳು."
        },
      ],
    };

    final data = pestsData[language]!;

    return Scaffold(

      appBar: AppBar(
        title: const Text("Pests Information"),
      ),

      body: ListView.builder(

        itemCount: data.length,

        itemBuilder: (context, index) {

          return Card(

            margin: const EdgeInsets.all(10),

            child: ListTile(

              leading: const Icon(
                Icons.bug_report,
                color: Colors.green,
              ),

              title: Text(data[index]["title"]!),

              subtitle: Text(data[index]["desc"]!),
            ),
          );
        },
      ),
    );
  }
}