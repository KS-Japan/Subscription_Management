import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:subscription_manager/MainScreen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debugの文字削除
      //title: 'Stocks List',
      home: MainScreen(),
    );
  }
}