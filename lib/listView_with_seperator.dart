import 'package:flutter/material.dart';

class ListViewWithSeperator extends StatelessWidget {
  ListViewWithSeperator({Key? key}) : super(key: key);

  var colors = [600, 500, 400, 300, 200, 100];
  var images = [
    "assets/icons/icon1.png",
    "assets/icons/icon2.png",
    "assets/icons/pet1.jpg",
    "assets/icons/icon1.png",
    "assets/icons/icon2.png",
    "assets/icons/pet1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Seperator builder"),
        ),
        body: ListView.separated(
            itemBuilder: (context, int index) {
              return Card(
                color: Colors.green[colors[index]],
                child: Image.asset(images[index]),
              );
            },
            separatorBuilder: (context, int index) {
              return const Divider(
                thickness: 6,
              );
            },
            itemCount: images.length));
  }
}
