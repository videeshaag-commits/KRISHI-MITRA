import 'package:flutter/material.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Disease Result",
          style: TextStyle(color: Colors.green),
        ),

        backgroundColor: Colors.white,
        elevation: 0,

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(
              width: double.infinity,
              height: 220,

              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Icon(
                Icons.eco,
                size: 120,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Crop",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Tomato",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Detected Disease",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Leaf Blight",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Description",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Leaf Blight is caused by fungus and spreads quickly in humid conditions. It damages leaves and reduces crop yield.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Recommended Solution",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            solutionTile(
              "Use organic fungicide spray",
            ),

            solutionTile(
              "Remove infected leaves immediately",
            ),

            solutionTile(
              "Avoid excess watering",
            ),

            solutionTile(
              "Maintain proper sunlight exposure",
            ),
          ],
        ),
      ),
    );
  }

  static Widget solutionTile(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [

          const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}