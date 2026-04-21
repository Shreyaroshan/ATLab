import 'package:flutter/material.dart';

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: const [

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name: Student"),
          ),

          ListTile(
            leading: Icon(Icons.work),
            title: Text("Designation: Developer"),
          ),

          ListTile(
            leading: Icon(Icons.business),
            title: Text("Company: ABC Tech"),
          ),

          ListTile(
            leading: Icon(Icons.timeline),
            title: Text("Experience: 2 Years"),
          ),
        ],
      ),
    );
  }
}
