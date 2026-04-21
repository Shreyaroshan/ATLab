import 'package:flutter/material.dart';

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {

  int rating = 3;
  bool recommend = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 2")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            const TextField(
              decoration: InputDecoration(
                labelText: "Movie Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            const Text("Rating"),

            for (int i = 1; i <= 5; i++)

              RadioListTile(
                title: Text("$i Stars"),

                value: i,

                groupValue: rating,

                onChanged: (val) {
                  setState(() {
                    rating = val as int;
                  });
                },
              ),

            SwitchListTile(
              title: const Text("Recommend to others"),

              value: recommend,

              onChanged: (val) {
                setState(() {
                  recommend = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
