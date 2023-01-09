import 'package:flutter/material.dart';

class BotmSheet extends StatelessWidget {
  const BotmSheet({Key? key}) : super(key: key);

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(
            leading: Icon(Icons.train),
            title: Text("Train"),
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: Text("Train"),
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: Text("Train"),
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: Text("Train"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: GestureDetector(
          child: const Text("Bottom Sheet"),
          onLongPress: () => show(context),
        ),
      ),
    );
  }
}
