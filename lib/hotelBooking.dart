import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelBooking(),
  ));
}

class HotelBooking extends StatelessWidget {
  const HotelBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            Image(image: AssetImage("assets/icons/germany.webp"),
              width: MediaQuery.of(context).size.width*0.8,
              fit: BoxFit.cover,),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage("assets/icons/hotelroom1.jpg"),
              width: MediaQuery.of(context).size.width * 0.4,
              fit: BoxFit.cover,),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage("assets/icons/hotelroom2.webp"),
              width: MediaQuery.of(context).size.width*0.3,
              fit: BoxFit.cover,),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage("assets/icons/hotelroom3.jpg"),
              width: MediaQuery.of(context).size.width*0.2,
              fit: BoxFit.cover,),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage("assets/icons/italy.jpg")),
          ],
        ),
      ),
    );
  }
}
