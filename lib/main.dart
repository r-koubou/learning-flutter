import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/demo/asyncscrollview/asyncscrollview.dart';
import 'package:learning_flutter/demo/tabviewdemo/tabviewdemo.dart';
import 'package:learning_flutter/helloworld/helloworld.dart';

import 'demo/mainmenu.dart';
import 'demo/screenname.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var routes = <String, Widget Function(BuildContext)>{
      ScreenName.helloWorld.value: (context) => const HelloWorld(),
      ScreenName.asyncscriollview.value: (context) => const AsyncScrollViewDemo(),
      ScreenName.tabview.value: (context) => const TabViewDemo(),
    };

    return MaterialApp(
      title: 'Flutter Learning Demo',
      home: const MainMenu(),
      routes: routes,
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
