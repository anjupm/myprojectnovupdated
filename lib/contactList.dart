import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false, home: ContactList(),
//   ));
// }

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ContactList"),
      ),
      body: ListView(
        children: [
          Card(
            shadowColor: Colors.black,
            child: ListTile(
              title: const Text("Contact 1"),
              subtitle: const Text('Number'),
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
          ),
          Card(
            shadowColor: Colors.black,
            child: ListTile(
              title: const Text("Contact 2"),
              subtitle: const Text('Number'),
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
          ),
          Card(
            shadowColor: Colors.black,
            child: ListTile(
              title: const Text("Contact 3"),
              subtitle: const Text('Number'),
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
          ),
          Card(
            shadowColor: Colors.black,
            child: ListTile(
              title: const Text("Contact 4"),
              subtitle: const Text('Number'),
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
          ),
        ],
      ),
    );
  }
}
