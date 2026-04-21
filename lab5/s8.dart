import 'package:flutter/material.dart';

class S8 extends StatelessWidget {
  const S8({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [

          const SliverAppBar(
            floating: true,
            expandedHeight: 200,

            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver AppBar"),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },

              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
