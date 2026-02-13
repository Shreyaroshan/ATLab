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
      home: ShapeMorphingCard(),
    );
  }
}

class ShapeMorphingCard extends StatefulWidget {
  const ShapeMorphingCard({super.key});

  @override
  State<ShapeMorphingCard> createState() => _ShapeMorphingCardState();
}

class _ShapeMorphingCardState extends State<ShapeMorphingCard> {

  bool isRight = false;

  void toggleCard() {
    setState(() {
      isRight = !isRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shape Morphing Card"),
        centerTitle: true,
      ),

      body: GestureDetector(
        onTap: toggleCard, // Tap anywhere
        child: Center(
          child: AnimatedContainer(

            // Alignment (Left <-> Right)
            alignment: isRight
                ? Alignment.centerRight
                : Alignment.centerLeft,

            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,

            // Bonus: Animate margin
            margin: isRight
                ? const EdgeInsets.symmetric(horizontal: 20)
                : const EdgeInsets.symmetric(horizontal: 60),

            child: Container(

              // Card UI
              width: 200,
              height: 120,

              decoration: BoxDecoration(
                color: Colors.blueAccent,

                // Border Radius
                borderRadius: BorderRadius.circular(
                  isRight ? 30 : 0,
                ),

                // Shadow
                boxShadow: isRight
                    ? [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ]
                    : [],
              ),

              alignment: Alignment.center,
              child: const Text(
                "Tap Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
