import 'package:flutter/material.dart';

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {

  final email = TextEditingController();
  final mobile = TextEditingController();
  final password = TextEditingController();

  void submit() {

    if (!email.text.contains("@")) {

      show("Invalid Email");
      return;
    }

    if (mobile.text.length != 10) {

      show("Invalid Mobile Number");
      return;
    }

    show("Registration Successful");
  }

  void show(String msg) {

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Registration")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              controller: email,
              decoration:
              const InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: mobile,
              keyboardType: TextInputType.number,
              decoration:
              const InputDecoration(labelText: "Mobile"),
            ),

            TextField(
              controller: password,
              obscureText: true,
              decoration:
              const InputDecoration(labelText: "Password"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: submit,
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
