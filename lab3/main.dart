import 'package:flutter/material.dart';

// Import your files
import 'q1.dart';
import 'q2.dart';
import 'q3.dart';
import 's1.dart';
import 's2.dart';
import 's3.dart';
import 's4.dart';

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
        title: const Text("Flutter Lab"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          menuButton(context, "Program 1", const Q1()),
          menuButton(context, "Program 2", const Q2()),
          menuButton(context, "Program 3", const Q3()),

          const Divider(),

          menuButton(context, "Exercise 1", const S1()),
          menuButton(context, "Exercise 2", const S2()),
          menuButton(context, "Exercise 3", const S3()),
          menuButton(context, "Exercise 4", S4()),
        ],
      ),
    );
  }

  Widget menuButton(BuildContext context, String title, Widget page) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },

        child: Text(title),
      ),
    );
  }
}
