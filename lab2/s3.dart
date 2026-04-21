import 'package:flutter/material.dart';

class S3 extends StatelessWidget {
  const S3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),

      body: Center(
        child: ElevatedButton(
          child: const Text("Go Next"),

          onPressed: () {

            Navigator.push(
              context,

              MaterialPageRoute(
                builder: (context) =>
                const SecondScreen(data: "Hello Flutter"),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  final String data;

  const SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),

      body: Center(
        child: Text(
          data,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
