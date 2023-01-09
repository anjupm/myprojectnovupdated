import 'package:flutter/material.dart';

class List_with_custom extends StatefulWidget {
  const List_with_custom({Key? key}) : super(key: key);

  @override
  State<List_with_custom> createState() => _List_with_customState();
}

class _List_with_customState extends State<List_with_custom> {
  var names= [
    "name1",
    "name2",
    "name3",
    "name4",
    "name5",
    "name6",
    "name7",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List with custom"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            child: Text(names[index]),
          );
        },
        childCount: names.length,
      )),
    );
  }
}
