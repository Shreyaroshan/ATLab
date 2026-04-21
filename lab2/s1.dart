import 'package:flutter/material.dart';

class S1 extends StatefulWidget {
  const S1({super.key});

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {

  final n1 = TextEditingController();
  final n2 = TextEditingController();

  int result = 0;

  void add() {
    setState(() {
      result =
          int.parse(n1.text) + int.parse(n2.text);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Addition")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              controller: n1,
              keyboardType: TextInputType.number,
              decoration:
              const InputDecoration(labelText: "Number 1"),
            ),

            TextField(
              controller: n2,
              keyboardType: TextInputType.number,
              decoration:
              const InputDecoration(labelText: "Number 2"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: add,
              child: const Text("Add"),
            ),

            const SizedBox(height: 20),

            Text("Result: $result",
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
