import 'package:flutter/material.dart';

class S6 extends StatelessWidget {
  const S6({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("GridView.builder")),

      body: GridView.builder(
        itemCount: 10,

        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),

        itemBuilder: (context, index) {

          return Card(
            child: Center(child: Text("Item $index")),
          );
        },
      ),
    );
  }
}
