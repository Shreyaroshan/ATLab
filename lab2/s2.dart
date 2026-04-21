import 'package:flutter/material.dart';

class S2 extends StatefulWidget {
  const S2({super.key});

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {

  final name = TextEditingController();
  final email = TextEditingController();

  void showSnack() {

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            "Name: ${name.text}, Email: ${email.text}"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Snackbar")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              controller: name,
              decoration:
              const InputDecoration(labelText: "Name"),
            ),

            TextField(
              controller: email,
              decoration:
              const InputDecoration(labelText: "Email"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: showSnack,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
