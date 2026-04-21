import 'package:flutter/material.dart';

class S4 extends StatelessWidget {
  S4({super.key});

  final items = ["Apple", "Banana", "Mango", "Orange"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),

      body: ListView.builder(
        itemCount: items.length,

        itemBuilder: (context, index) {

          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
