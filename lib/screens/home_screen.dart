import 'package:flutter/material.dart';
import 'voice_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),

        title: const Text(
          "Krishi Mitra",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Hello Farmer! 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "How can we assist you today?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
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
                          builder: (context) => const VoiceScreen(),
                        ),
                      );
                    },

                    child: Container(
                      height: 180,

                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),

                          SizedBox(height: 20),

                          Text(
                            "Speak",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            "Describe your\nproblem",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                Expanded(
                  child: Container(
                    height: 180,

                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Upload",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "Upload leaf\nimage",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Quick Access",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                quickItem(Icons.eco, "Disease"),
                quickItem(Icons.bug_report, "Pests"),
                quickItem(Icons.water_drop, "Fertilizer"),
                quickItem(Icons.cloud, "Weather"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget quickItem(IconData icon, String title) {
    return Container(
      width: 75,
      height: 75,

      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(icon, color: Colors.green),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}