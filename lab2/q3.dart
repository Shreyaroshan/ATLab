import 'package:flutter/material.dart';

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Table")),

      body: Center(
        child: Table(
          border: TableBorder.all(),

          children: const [

            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Name"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Age"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Dept"),
              ),
            ]),

            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("A"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("20"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("CSE"),
              ),
            ]),

            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("B"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("21"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("IT"),
              ),
            ]),

            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("C"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("22"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("ECE"),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
