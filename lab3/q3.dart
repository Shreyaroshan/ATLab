import 'package:flutter/material.dart';

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 3")),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),

        children: [

          categoryCard(Icons.phone_android, "Electronics"),

          categoryCard(Icons.shopping_bag, "Fashion"),

          categoryCard(Icons.book, "Books"),

          categoryCard(Icons.sports, "Sports"),
        ],
      ),
    );
  }

  Widget categoryCard(IconData icon, String title) {

    return Card(
      elevation: 3,

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(icon, size: 40),

            const SizedBox(height: 10),

            Text(title),
          ],
        ),
      ),
    );
  }
}
