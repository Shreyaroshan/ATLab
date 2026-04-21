import 'package:flutter/material.dart';

class S1 extends StatelessWidget {
  const S1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sample Program 1")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Image.network(
              "https://tinyurl.com/flutter-logo-png",
              height: 100,
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome to Flutter Lab",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                print("Elevated Button Clicked");
              },
              child: const Text("Submit"),
            ),

            OutlinedButton(
              onPressed: () {},
              child: const Text("Secondary Action"),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            ),
          ],
        ),
      ),
    );
  }
}
