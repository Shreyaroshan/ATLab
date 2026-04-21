import 'package:flutter/material.dart';

class S5 extends StatelessWidget {
  const S5({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Layout")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          const Text("Flutter Layout"),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: const [

              Icon(Icons.home, size: 40),

              Icon(Icons.settings, size: 40),
            ],
          ),
        ],
      ),
    );
  }
}
