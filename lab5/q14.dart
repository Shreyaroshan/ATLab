import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Q14 extends StatefulWidget {
  const Q14({super.key});

  @override
  State<Q14> createState() => _Q14State();
}

class _Q14State extends State<Q14> {

  Database? db;

  List<Map<String, dynamic>> students = [];

  @override
  void initState() {
    super.initState();
    initDB();
  }

  Future<void> initDB() async {

    db = await openDatabase(
      join(await getDatabasesPath(), "student2.db"),

      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE student(roll INTEGER, name TEXT)",
        );
      },

      version: 1,
    );

    await db!.insert("student",
        {"roll": 101, "name": "Rahul"});

    await db!.insert("student",
        {"roll": 102, "name": "Priya"});

    students = await db!.query("student");

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("SQLite Roll No")),

      body: ListView.builder(
        itemCount: students.length,

        itemBuilder: (context, index) {

          return ListTile(
            title: Text(students[index]["name"]),

            trailing:
            Text("Roll: ${students[index]["roll"]}"),
          );
        },
      ),
    );
  }
}
