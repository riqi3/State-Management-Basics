import 'package:flutter/material.dart';

class _NewContactViewState extends StatefulWidget {
  const _NewContactViewState({super.key});

  @override
  State<_NewContactViewState> createState() => __NewContactViewStateState();
}

class __NewContactViewStateState extends State<_NewContactViewState> {
  
  late final TextEditingController _controller;

  @override
  void initState(){
    _controller = TextEditingController();
    super.initState();
  }

    @override
  void dispose(){
    _controller = TextEditingController();
    super.initState();
  }
  
  // @override
  // _NewContactViewState createState() => _NewContactViewState();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('dasadfdg'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}