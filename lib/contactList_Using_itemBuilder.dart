import 'package:flutter/material.dart';

class ContactRegister extends StatelessWidget {
  ContactRegister({Key? key}) : super(key: key);

  

  var name = [
    "contact1",
    "contact2",
    "contact3",
    "contact4",
    "contact5",
    "contact6",
  ];
  var number = [
    "091253647",
    "091253647",
    "091253647",
    "091253647",
    "091253647",
    "091253647"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Book"),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(number[index]),
                leading: const Icon(Icons.person),
                trailing: Wrap(
                  children: const [
                    Icon(Icons.message, color: Colors.grey),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
