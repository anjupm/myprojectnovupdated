import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_With_Builder(),
  ));
}

class List_With_Builder extends StatelessWidget {
  List_With_Builder({Key? key}) : super(key: key);
  var datas = [
    "item1",
    "item2",
    "item3",
    "item4",
    "item5",
    "item6",
    "item7",
  ];
  var colors = [700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST WITH BUILDER"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.pink[colors[index]],
              height: 50,
              child: Center(
                child: Text(datas[index]),
              ),
            );
          }),
    );
  }
}
