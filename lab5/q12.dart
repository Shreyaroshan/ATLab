import 'package:flutter/material.dart';

class Q12 extends StatelessWidget {
  const Q12({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Image Grid")),

      body: GridView.builder(
        itemCount: 6,

        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),

        padding: const EdgeInsets.all(10),

        itemBuilder: (context, index) {

          return Image.network(
            "https://picsum.photos/200?random=$index",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
