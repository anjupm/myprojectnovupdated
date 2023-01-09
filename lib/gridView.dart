import 'package:flutter/material.dart';

class GridVieww extends StatelessWidget {
  GridVieww({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
        children: [
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),
          Image.asset("assets/icons/pet1.jpg"),

        ],
      ),
    );
  }
}
