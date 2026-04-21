import 'package:flutter/material.dart';

class S3 extends StatelessWidget {
  const S3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sample Program 3")),

      body: Column(
        children: [

          const SizedBox(height: 20),

          const Text("Layout Demo"),

          const SizedBox(height: 20),

          Row(
            children: [

              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 50,
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
