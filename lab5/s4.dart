import 'package:flutter/material.dart';

class S4 extends StatelessWidget {
  const S4({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("GridView.count")),

      body: GridView.count(
        crossAxisCount: 3,

        children: List.generate(6, (i) {
          return Card(
            child: Center(child: Text("Item $i")),
          );
        }),
      ),
    );
  }
}
