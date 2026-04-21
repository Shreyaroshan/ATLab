import 'package:flutter/material.dart';

class S4 extends StatelessWidget {
  S4({super.key});

  final List<String> users = ["A", "B", "C", "D", "E"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sample Program 4")),

      body: ListView.builder(
        itemCount: users.length,

        itemBuilder: (context, index) {

          return ListTile(
            leading: const Icon(Icons.person),

            title: Text("User ${users[index]}"),

            subtitle: const Text("Role: Developer"),

            trailing: const Icon(Icons.arrow_forward_ios),

            onTap: () {},
          );
        },
      ),
    );
  }
}
