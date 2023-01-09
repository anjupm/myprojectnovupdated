import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MaterialApp(
    home: MyLottie(),
  ));
}

class MyLottie extends StatefulWidget {
  const MyLottie({Key? key}) : super(key: key);

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child:Lottie.network('https://assets3.lottiefiles.com/private_files/lf30_muhbrucd.json'),
          ),
          Lottie.asset("assets/animations/41067-skyfall-ufo.json"),


        ],
      ),
    );
  }
}
