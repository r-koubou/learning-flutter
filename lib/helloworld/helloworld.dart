import 'package:flutter/material.dart';
import 'package:learning_flutter/util.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar:AppBar(title: Text(nameOf(#HelloWorld))),
      body: const Center(
        child: Text('Hello, world!'),
      ),
    );
  }
}
