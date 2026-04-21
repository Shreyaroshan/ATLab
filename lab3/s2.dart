import 'package:flutter/material.dart';

class S2 extends StatefulWidget {
  const S2({super.key});

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {

  bool isAccepted = false;
  int selectedGender = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Sample Program 2")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            CheckboxListTile(
              title: const Text("I accept terms"),
              value: isAccepted,

              onChanged: (val) {
                setState(() {
                  isAccepted = val!;
                });
              },
            ),

            const Divider(),

            RadioListTile(
              title: const Text("Male"),
              value: 1,
              groupValue: selectedGender,

              onChanged: (val) {
                setState(() {
                  selectedGender = val as int;
                });
              },
            ),

            RadioListTile(
              title: const Text("Female"),
              value: 2,
              groupValue: selectedGender,

              onChanged: (val) {
                setState(() {
                  selectedGender = val as int;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
