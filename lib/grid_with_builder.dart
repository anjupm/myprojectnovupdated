import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_view_builder(),
  ));
}
class Grid_view_builder extends StatelessWidget {
  Grid_view_builder({Key? key}) : super(key: key);

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
      body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: images.length,
          itemBuilder: (context,index){
            return  Card(
              child: Image.asset(images[index]),
            );
          }),
    );
  }
}
