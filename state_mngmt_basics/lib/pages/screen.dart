import 'package:flutter/material.dart';

import '../main.dart';

class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      backgroundColor: Colors.amber,
      body: ListView.builder(
        itemCount: contactBook.length,
        itemBuilder: (context, index) {
          final contact = contactBook.contact(atIndex: index)!;
          return ListTile(
            title: Text(
              contact.name,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("test");
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}
