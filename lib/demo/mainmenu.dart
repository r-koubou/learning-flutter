import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/demo/screenname.dart';

import '../main.dart';
import '../util.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(title: const Text("Menu"),),
      body: SingleChildScrollView(
          child: Column(children:[
            buildMenuItem(context, ScreenName.helloWorld),
            buildMenuItem(context, ScreenName.asyncscriollview),
          ]
          )),
    );
  }

  Widget buildMenuItem(BuildContext context, ScreenName item) {
    return SizedBox(
        width: screenWidth(context),
        height: 50,
        child: CupertinoButton.filled(
          onPressed: () {
            Navigator.pushNamed(context, item.value);
          },
          child: Text(item.value),
          borderRadius: BorderRadius.zero,
        )
    );
  }
}
