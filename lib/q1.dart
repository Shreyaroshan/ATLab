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
      home: AnimationExample(),
    );
  }
}

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {

  double boxSize = 100;
  Color boxColor = Colors.blue;

  void toggleBox() {
    setState(() {
      if (boxSize == 100) {
        boxSize = 200;
        boxColor = Colors.red;
      } else {
        boxSize = 100;
        boxColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color & Size Toggle"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Animated Container
            AnimatedContainer(
              width: boxSize,
              height: boxSize,
              color: boxColor,

              // Animation Settings
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),

            const SizedBox(height: 30),

            // Button
            ElevatedButton(
              onPressed: toggleBox,
              child: const Text("Toggle"),
            ),
          ],
        ),
      ),
    );
  }
}
