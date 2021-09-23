import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:subscription_manager/MainScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //フォントの種類：https://fonts.google.com/
        textTheme: GoogleFonts.kosugiMaruTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false, // Debugの文字削除
      //title: 'Stocks List',
      home: MainScreen(),
    );
  }
}