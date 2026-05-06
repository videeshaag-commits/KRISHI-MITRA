import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Scan History",
          style: TextStyle(
            color: Colors.green,
          ),
        ),

        backgroundColor: Colors.white,
        elevation: 0,

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(
          children: const [

            HistoryCard(
              crop: "Tomato",
              disease: "Leaf Blight",
              date: "Today",
              color: Colors.red,
            ),

            SizedBox(height: 15),

            HistoryCard(
              crop: "Rice",
              disease: "Brown Spot",
              date: "Yesterday",
              color: Colors.orange,
            ),

            SizedBox(height: 15),

            HistoryCard(
              crop: "Potato",
              disease: "Early Blight",
              date: "2 Days Ago",
              color: Colors.deepOrange,
            ),

            SizedBox(height: 15),

            HistoryCard(
              crop: "Wheat",
              disease: "Rust Disease",
              date: "3 Days Ago",
              color: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {

  final String crop;
  final String disease;
  final String date;
  final Color color;

  const HistoryCard({
    super.key,
    required this.crop,
    required this.disease,
    required this.date,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          CircleAvatar(
            radius: 28,
            backgroundColor: color,

            child: const Icon(
              Icons.eco,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  crop,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  disease,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}