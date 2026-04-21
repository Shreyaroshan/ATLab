import 'package:flutter/material.dart';

// Experiments
import 's1.dart';
import 's2.dart';
import 's3.dart';
import 's4.dart';
import 's5.dart';
import 's6.dart';
import 's7.dart';
import 's8.dart';
import 's9.dart';
import 's10.dart';

// Regular Exercises
import 'q11.dart';
import 'q12.dart';
import 'q13.dart';
import 'q14.dart';

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
        title: const Text("Flutter Lab 5"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          // -------- Experiments ----------
          const Text(
            "Experiments",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          menu(context, "1. Card Widget", const S1()),
          menu(context, "2. ListView & ListTile", const S2()),
          menu(context, "3. GridView", const S3()),
          menu(context, "4. GridView.count", const S4()),
          menu(context, "5. GridView.extent", const S5()),
          menu(context, "6. GridView.builder", const S6()),
          menu(context, "7. Stack", const S7()),
          menu(context, "8. Sliver Scroll", const S8()),
          menu(context, "9. REST API", const S9()),
          menu(context, "10. SQLite DB", const S10()),

          const Divider(height: 30),

          // -------- Regular Exercises ----------
          const Text(
            "Regular Exercises",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          menu(context, "R1: Student List", const Q11()),
          menu(context, "R2: Image Grid", const Q12()),
          menu(context, "R3: Product API", const Q13()),
          menu(context, "R4: SQLite Roll No", const Q14()),
        ],
      ),
    );
  }

  // Reusable Menu Button
  Widget menu(BuildContext context, String title, Widget page) {

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

        child: Text(title),
      ),
    );
  }
}
