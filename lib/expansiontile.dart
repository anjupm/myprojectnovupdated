import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ExpansionEx(),
  ));
}

class ExpansionEx extends StatelessWidget {
  const ExpansionEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expansion Tile"),),
      body: const ExpansionTile(title: Text("Colors"),
        subtitle: Text("Expand this Tile"),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red,),
            title: Text("Red"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,),
            title: Text("Blue"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,),
            title: Text("Green"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.grey,),
            title: Text("Grey"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red,),
            title: Text("Red"),
          ),
        ],

      ),
    );
  }
}
