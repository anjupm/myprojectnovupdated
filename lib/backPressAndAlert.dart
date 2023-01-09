import 'package:flutter/material.dart';

class AlertWithBackPress extends StatelessWidget {
  const AlertWithBackPress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Exit!!"),
            content: const Text("Do you want to exit"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("No")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("Yes")),
            ],
          ));
    }


    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alert"),
        ),
        body: const Center(
          child: Text("Press back button to exit"),
        ),
      ),
    );
  }

}
