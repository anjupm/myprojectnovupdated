import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FlexibleWidgetEx(),
  ));
}

class FlexibleWidgetEx extends StatelessWidget {
  const FlexibleWidgetEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Widget"),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 3,
            child: Container(
              // height: 100,
              // width: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
