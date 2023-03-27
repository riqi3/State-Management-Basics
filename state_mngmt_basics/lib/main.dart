import 'package:flutter/material.dart';

import 'pages/screen.dart';

void main() => runApp(StateManagementBasics());

class StateManagementBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => screen(),
      },
    );
  }
}

class Contact {
  final String name;
  const Contact({required this.name});
}

class ContactBook {
  ContactBook._sharedInstance();
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  final List<Contact> _contacts = [];

  int get length => _contacts.length;

  void add({required Contact contact}) {
    _contacts.add(contact);
  }

  void remove({required Contact contact}) {
    _contacts.add(contact);
  }

  Contact? contact({required int atIndex}) => 
  _contacts.length > atIndex ? _contacts[atIndex] : null;
}
