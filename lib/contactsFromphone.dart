import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

void main() => runApp(FlutterContactsExample());

class FlutterContactsExample extends StatefulWidget {
  const FlutterContactsExample({Key? key}) : super(key: key);

  @override
  _FlutterContactsExampleState createState() => _FlutterContactsExampleState();
}

class _FlutterContactsExampleState extends State<FlutterContactsExample> {
  List<Contact>? _contacts;
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts();
      setState(() => _contacts = contacts);
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('flutter_contacts_example')),
          body: _body()));

  Widget _body() {
    if (_permissionDenied) return Center(child: Text('Permission denied'));
    if (_contacts == null) return Center(child: CircularProgressIndicator());
    return ListView.builder(
        itemCount: _contacts!.length,
        itemBuilder: (BuildContext context, int index) {
          print("aaaaa ${_contacts![index].phones}");
          return Card(
            child: ListTile(
              title: Text(_contacts![index].displayName ?? ""),
              subtitle: Text(_contacts![index].id.isEmpty ? "0" : _contacts![index].id[0].toString()),
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
        });
  }
}

class ContactPage extends StatelessWidget {
  final Contact contact;
  const ContactPage(this.contact);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text(contact.displayName)),
      body: Column(children: [
        Text('First name: ${contact.name.first}'),
        Text('Last name: ${contact.name.last}'),
        Text(
            'Phone number: ${contact.phones.isNotEmpty ? contact.phones.first.number : '(none)'}'),
        Text(
            'Email address: ${contact.emails.isNotEmpty ? contact.emails.first.address : '(none)'}'),
      ]));
}