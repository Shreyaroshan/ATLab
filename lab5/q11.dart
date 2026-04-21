import 'package:flutter/material.dart';

class Q11 extends StatelessWidget {
  const Q11({super.key});

  final students = const [
    {"name": "A", "dept": "CSE"},
    {"name": "B", "dept": "IT"},
    {"name": "C", "dept": "ECE"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student List")),

      body: ListView.builder(
        itemCount: students.length,

        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),

            title: Text(students[index]["name"]!),

            subtitle: Text(students[index]["dept"]!),
          );
        },
      ),
    );
  }
}
