import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class S10 extends StatefulWidget {
  const S10({super.key});

  @override
  State<S10> createState() => _S10State();
}

class _S10State extends State<S10> {

  Database? db;
  List<Map<String, dynamic>> students = [];

  @override
  void initState() {
    super.initState();
    initDB();
  }

  Future<void> initDB() async {

    db = await openDatabase(
      join(await getDatabasesPath(), "student.db"),

      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE student(id INTEGER, name TEXT)",
        );
      },

      version: 1,
    );

    await db!.insert("student", {"id": 1, "name": "Anu"});
    await db!.insert("student", {"id": 2, "name": "Ravi"});

    students = await db!.query("student");

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("SQLite")),

      body: ListView.builder(
        itemCount: students.length,

        itemBuilder: (context, i) {

          return ListTile(
            title: Text(students[i]["name"]),
          );
        },
      ),
    );
  }
}
