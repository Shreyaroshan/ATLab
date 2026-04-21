import 'package:flutter/material.dart';

class S7 extends StatelessWidget {
  const S7({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Stack")),

      body: Center(
        child: Stack(
          children: [

            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),

            Positioned(
              top: 50,
              left: 50,

              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
