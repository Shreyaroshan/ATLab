import 'package:flutter/material.dart';

// Sample Programs
import 's1.dart';
import 's2.dart';
import 's3.dart';
import 's4.dart';
import 's5.dart';

// Exercises
import 'q1.dart';
import 'q2.dart';
import 'q3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Lab - Cycle 2"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          const Text("Sample Programs",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          menuBtn(context, "Program 1: Addition", const S1()),
          menuBtn(context, "Program 2: Snackbar", const S2()),
          menuBtn(context, "Program 3: Navigation", const S3()),
          menuBtn(context, "Program 4: ListView",  S4()),
          menuBtn(context, "Program 5: Layout", const S5()),

          const Divider(height: 30),

          const Text("Exercises",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          menuBtn(context, "Exercise 1: Profile", const Q1()),
          menuBtn(context, "Exercise 2: Registration", const Q2()),
          menuBtn(context, "Exercise 3: Table", const Q3()),
        ],
      ),
    );
  }

  Widget menuBtn(BuildContext context, String text, Widget page) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },

        child: Text(text),
      ),
    );
  }
}
