import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class S9 extends StatelessWidget {
  const S9({super.key});

  Future<List> fetchUsers() async {

    final res = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
    );

    return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("REST API")),

      body: FutureBuilder(
        future: fetchUsers(),

        builder: (context, snapshot) {

          if (snapshot.hasData) {

            final data = snapshot.data as List;

            return ListView.builder(
              itemCount: data.length,

              itemBuilder: (context, i) {

                return ListTile(
                  title: Text(data[i]["name"]),
                  subtitle: Text(data[i]["email"]),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
