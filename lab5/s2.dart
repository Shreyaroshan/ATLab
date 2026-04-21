import 'package:flutter/material.dart';

class S2 extends StatelessWidget {
  const S2({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Student 1"),
            subtitle: Text("CSE"),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Student 2"),
            subtitle: Text("IT"),
          ),
        ],
      ),
    );
  }
}
