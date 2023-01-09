import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myprojectnov/contactsFromphone.dart';
import 'package:myprojectnov/tabBar.dart';


//import 'ListPage.dart';
//import 'home.dart';

import 'contactList_Using_itemBuilder.dart';
import 'gridView.dart';
import 'grid_with_builder.dart';
import 'hotelRoom.dart';
import 'listPage.dart';
import 'listView_with_custom.dart';
import 'listView_with_seperator.dart';
import 'login_with_validation.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>   const HotelRoom()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.blue, Colors.yellow])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/icon1.png",
                width: 100,
                height: 100,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 40, color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
