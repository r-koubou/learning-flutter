import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
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

  List<Information> _informations = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(title: Text(nameOf(#AsyncScrollViewDemo))),
        body: Column(children: [
          CupertinoButton(child: const Text("Add"), onPressed: ()=> setState(() {
            _addItems();
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

  void _addItems( ) {
    var rand = math.Random();
    for (var i = 0; i < 10; i++) {
      var id = i + rand.nextInt(0x7fffffff);
      _informations.add(Information(
          name: "Name $i",
          description: "Description $id",
          url: "https://www.google.com",
          imagePath: "https://picsum.photos/320/320?random=$id"
      ));
    }
  }

}
