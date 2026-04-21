import 'package:flutter/material.dart';

class S1 extends StatelessWidget {
  const S1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card")),

      body: Center(
        child: Card(
          elevation: 5,

          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text("This is a Card widget"),
          ),
        ),
      ),
    );
  }
}
