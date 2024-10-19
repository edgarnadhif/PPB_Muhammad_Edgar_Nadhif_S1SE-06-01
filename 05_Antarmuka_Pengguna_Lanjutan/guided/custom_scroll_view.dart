import 'package:flutter/material.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silver"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: CustomScrollView(
        slivers: [
          // Sliver App Bar
          SliverAppBar(
            pinned: true,
            expandedHeight: 150,
            backgroundColor: Colors.indigoAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver App Bar",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          // Sliver Grid
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4,
            ),
          ),
          // Sliver Fixed Extent List
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
              childCount: 20, // Define the child count
            ),
          ),
        ],
      ),
    );
  }
}
