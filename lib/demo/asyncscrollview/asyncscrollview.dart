import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:learning_flutter/demo/asyncscrollview/cellview.dart';

import '../../util.dart';
import 'information.dart';

class AsyncScrollViewDemo extends StatefulWidget {

  const AsyncScrollViewDemo({super.key});

  @override
  State<StatefulWidget> createState()
    => AsyncScrollViewDemoState();
}

class AsyncScrollViewDemoState extends State<AsyncScrollViewDemo> {

  final List<Information> _informations = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(nameOf(#AsyncScrollViewDemo))),
        body: Column(children: [
          TextButton(child: const Text("Add"), onPressed: ()=> setState(() {
            _addItems(_informations.length);
          })),
          Expanded(
            child: ListView.builder(
              itemCount: _informations.length,
              itemBuilder: (context, index) {
                return CellView(information: _informations[index]);
              },
            ),
          )
        ]));
  }

  void _addItems(int lastIndex) {
    var rand = math.Random();
    for (var i = 0; i < 10; i++) {
      var id = i + rand.nextInt(0x7fffffff);
      _informations.add(Information(
          name: "Name ${lastIndex + i + 1}",
          description: "Description: Id $id",
          url: "https://www.google.com",
          imagePath: "https://picsum.photos/320/320?random=$id"
      ));
    }
  }

}
