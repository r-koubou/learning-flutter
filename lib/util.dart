import 'package:flutter/cupertino.dart';

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

String nameOf(Symbol symbol) {
  var result = symbol.toString().substring(8);   // Symbol("
  return result.substring(0, result.length - 2); // ")
}
