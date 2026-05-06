import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {

  final String language;

  const WeatherScreen({
    super.key,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {

    Map<String, Map<String, String>> weatherData = {

      "English": {

        "title": "Weather Alerts",

        "weekly":
            "🌧️ Weekly Alert:\nHeavy rain expected this week. Protect crops from water damage.",

        "monthly":
            "☀️ Monthly Forecast:\nHigh temperature expected this month. Irrigate crops regularly.",

        "tips":
            "✅ Farming Tips:\n• Store fertilizers safely\n• Avoid overwatering\n• Check pest attacks regularly",
      },

      "Tamil": {

        "title": "வானிலை எச்சரிக்கை",

        "weekly":
            "🌧️ வாராந்திர எச்சரிக்கை:\nஇந்த வாரம் கனமழை எதிர்பார்க்கப்படுகிறது. பயிர்களை பாதுகாக்கவும்.",

        "monthly":
            "☀️ மாதாந்திர முன்னறிவிப்பு:\nஇந்த மாதம் அதிக வெப்பம் இருக்கும். பயிர்களுக்கு முறையாக நீர் வழங்கவும்.",

        "tips":
            "✅ விவசாய குறிப்புகள்:\n• உரங்களை பாதுகாப்பாக வைக்கவும்\n• அதிக நீர் விட வேண்டாம்\n• பூச்சி தாக்குதலை கவனிக்கவும்",
      },

      "Hindi": {

        "title": "मौसम चेतावनी",

        "weekly":
            "🌧️ साप्ताहिक चेतावनी:\nइस सप्ताह भारी बारिश की संभावना है। फसलों की रक्षा करें।",

        "monthly":
            "☀️ मासिक पूर्वानुमान:\nइस महीने अधिक तापमान रहेगा। फसलों को नियमित पानी दें।",

        "tips":
            "✅ खेती सुझाव:\n• उर्वरक सुरक्षित रखें\n• अधिक पानी न दें\n• कीट हमलों की जांच करें",
      },

      "Kannada": {

        "title": "ಹವಾಮಾನ ಎಚ್ಚರಿಕೆ",

        "weekly":
            "🌧️ ವಾರದ ಎಚ್ಚರಿಕೆ:\nಈ ವಾರ ಭಾರಿ ಮಳೆಯ ಸಾಧ್ಯತೆ ಇದೆ. ಬೆಳೆಗಳನ್ನು ರಕ್ಷಿಸಿ.",

        "monthly":
            "☀️ ಮಾಸಿಕ ಮುನ್ಸೂಚನೆ:\nಈ ತಿಂಗಳು ಹೆಚ್ಚಿನ ತಾಪಮಾನ ಇರಬಹುದು. ಬೆಳೆಗಳಿಗೆ ನಿಯಮಿತ ನೀರು ನೀಡಿ.",

        "tips":
            "✅ ಕೃಷಿ ಸಲಹೆಗಳು:\n• ರಸಗೊಬ್ಬರಗಳನ್ನು ಸುರಕ್ಷಿತವಾಗಿ ಇಡಿ\n• ಹೆಚ್ಚು ನೀರು ಹಾಕಬೇಡಿ\n• ಕೀಟ ದಾಳಿಯನ್ನು ಪರಿಶೀಲಿಸಿ",
      },
    };

    final data = weatherData[language]!;

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text(
          data["title"]!,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            weatherCard(
              Icons.calendar_today,
              data["weekly"]!,
              Colors.blue.shade100,
            ),

            const SizedBox(height: 20),

            weatherCard(
              Icons.sunny,
              data["monthly"]!,
              Colors.orange.shade100,
            ),

            const SizedBox(height: 20),

            weatherCard(
              Icons.tips_and_updates,
              data["tips"]!,
              Colors.green.shade100,
            ),
          ],
        ),
      ),
    );
  }

  Widget weatherCard(
    IconData icon,
    String text,
    Color color,
  ) {

    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        color: color,

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Row(

        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Icon(
            icon,
            size: 35,
            color: Colors.black87,
          ),

          const SizedBox(width: 15),

          Expanded(

            child: Text(

              text,

              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}