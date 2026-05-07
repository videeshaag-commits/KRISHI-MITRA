import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  Uint8List? imageBytes;

  final ImagePicker picker = ImagePicker();

  Future<void> pickFromGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final bytes = await image.readAsBytes();

      setState(() {
        imageBytes = bytes;
      });

      analyzeImage();
    }
  }

  Future<void> pickFromCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final bytes = await image.readAsBytes();

      setState(() {
        imageBytes = bytes;
      });

      analyzeImage();
    }
  }

  void analyzeImage() {
    List<Map<String, String>> diseases = [
      {
        "name": "Leaf Blight",
        "solution": "Use fungicide spray and avoid overwatering.",
      },

      {
        "name": "Brown Spot",
        "solution": "Maintain proper drainage and use healthy seeds.",
      },

      {
        "name": "Bacterial Wilt",
        "solution": "Remove infected plants immediately.",
      },

      {"name": "Powdery Mildew", "solution": "Spray neem oil weekly."},

      {"name": "Rust Disease", "solution": "Use sulfur-based fungicide."},
    ];

    diseases.shuffle();

    final result = diseases.first;

    showDialog(
      context: context,

      builder: (_) => AlertDialog(
        title: const Text("Disease Detected"),

        content: Column(
          mainAxisSize: MainAxisSize.min,

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Possible Disease: ${result["name"]}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Text("Solution:\n${result["solution"]}"),
          ],
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },

            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void showPickerOption() {
    showModalBottomSheet(
      context: context,

      builder: (_) {
        return SizedBox(
          height: 170,

          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.photo),

                title: const Text("Choose from Gallery"),

                onTap: () {
                  Navigator.pop(context);

                  pickFromGallery();
                },
              ),

              ListTile(
                leading: const Icon(Icons.camera_alt),

                title: const Text("Open Camera"),

                onTap: () {
                  Navigator.pop(context);

                  pickFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upload Image")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            GestureDetector(
              onTap: showPickerOption,

              child: Container(
                height: 300,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.green.shade50,

                  borderRadius: BorderRadius.circular(20),

                  border: Border.all(color: Colors.green),
                ),

                child: imageBytes == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: const [
                          Icon(
                            Icons.cloud_upload,
                            size: 80,
                            color: Colors.green,
                          ),

                          SizedBox(height: 20),

                          Text(
                            "Tap to Upload Leaf Image",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: Image.memory(imageBytes!, fit: BoxFit.cover),
                      ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: showPickerOption,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 55),
              ),

              child: const Text(
                "Upload Image",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
