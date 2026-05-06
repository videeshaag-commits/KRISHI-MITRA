import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  bool imageUploaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: const Text(
          "Upload Image",
          style: TextStyle(color: Colors.green),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  imageUploaded = true;
                });
              },

              child: Container(
                height: 250,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.green.shade50,

                  borderRadius: BorderRadius.circular(20),

                  border: Border.all(color: Colors.green.shade200),
                ),

                child: imageUploaded
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: const [
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 80,
                          ),

                          SizedBox(height: 20),

                          Text(
                            "Image Uploaded Successfully",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: const [
                          Icon(
                            Icons.cloud_upload,
                            size: 70,
                            color: Colors.green,
                          ),

                          SizedBox(height: 20),

                          Text(
                            "Tap to Upload Leaf Image",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "Upload affected crop image",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                onPressed: () {
                  if (!imageUploaded) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please upload image first"),
                      ),
                    );

                    return;
                  }

                  showDialog(
                    context: context,

                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Disease Detected"),

                        content: const Text(
                          "Possible Disease: Leaf Blight\n\nSolution:\nUse fungicide spray and avoid overwatering.",
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },

                child: const Text(
                  "Analyze Image",

                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
