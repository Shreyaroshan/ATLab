import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageReveal(),
    );
  }
}

class ImageReveal extends StatefulWidget {
  const ImageReveal({super.key});

  @override
  State<ImageReveal> createState() => _ImageRevealState();
}

class _ImageRevealState extends State<ImageReveal> {

  bool showImage = false;

  void toggleImage() {
    setState(() {
      showImage = !showImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Reveal"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Stack for layering
            Stack(
              alignment: Alignment.center,
              children: [

                // Placeholder Icon
                AnimatedOpacity(
                  opacity: showImage ? 0.0 : 1.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,

                  child: const Icon(
                    Icons.image,
                    size: 120,
                    color: Colors.grey,
                  ),
                ),

                // Actual Image
                AnimatedOpacity(
                  opacity: showImage ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,

                  child: Image.network(
                    "https://picsum.photos/300",
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Button
            ElevatedButton(
              onPressed: toggleImage,
              child: Text(
                showImage ? "Hide Image" : "Show Image",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
