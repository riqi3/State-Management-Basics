import 'package:flutter/material.dart';
import 'package:state_mngmt_basics/NewContactState.dart';

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
      home: const screen(),
      routes: {
        '/new-contact': (context) => const NewContactView(),
      },
    );
  }
}

