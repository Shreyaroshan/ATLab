import 'package:flutter/material.dart';

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 1")),

      body: Column(
        children: [

          Stack(
            clipBehavior: Clip.none,
            children: [

              Image.network(
                "https://picsum.photos/500/200",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              Positioned(
                bottom: -40,
                left: MediaQuery.of(context).size.width / 2 - 40,

                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage:
                  NetworkImage("https://i.pravatar.cc/150"),
                ),
              ),
            ],
          ),

          const SizedBox(height: 60),

          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Student Name"),
            subtitle: Text("Flutter Developer"),
          ),

          const ListTile(
            leading: Icon(Icons.email),
            title: Text("student@gmail.com"),
          ),
        ],
      ),
    );
  }
}
