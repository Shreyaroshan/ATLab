import 'package:flutter/material.dart';

class S5 extends StatelessWidget {
  const S5({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("GridView.extent")),

      body: GridView.extent(
        maxCrossAxisExtent: 150,

        children: List.generate(8, (i) {
          return Container(
            margin: const EdgeInsets.all(8),
            color: Colors.teal,

            child: Center(child: Text("Item $i")),
          );
        }),
      ),
    );
  }
}
