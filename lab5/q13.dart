import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Q13 extends StatelessWidget {
  const Q13({super.key});

  Future<List> fetchProducts() async {

    final res = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Products")),

      body: FutureBuilder(
        future: fetchProducts(),

        builder: (context, snapshot) {

          if (snapshot.hasData) {

            final data = snapshot.data as List;

            return ListView.builder(
              itemCount: data.length,

              itemBuilder: (context, index) {

                return ListTile(
                  leading: Image.network(
                    data[index]["image"],
                    width: 40,
                  ),

                  title: Text(data[index]["title"]),

                  subtitle:
                  Text("₹ ${data[index]["price"]}"),
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
