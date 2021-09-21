//import 'package:flutter/material.dart';
//Color aa = Colors.indigo[900]!;

//タイトル名などの基本設定
class BaseParameters {
  BaseParameters({
    this.title = "ポートフォリオ",
    this.titleGraphical = "可視化グラフ",
    this.titleLookFor = "さぶすくを探す",
    this.currentIndexZero = 0,
    this.currentIndexOne = 1,
    this.currentIndexTwo = 2
    //this.color = Colors.indigo[900]!
  });
  final String title;
  final String titleGraphical;
  final String titleLookFor;
  final int currentIndexZero;
  final int currentIndexOne;
  final int currentIndexTwo;
}