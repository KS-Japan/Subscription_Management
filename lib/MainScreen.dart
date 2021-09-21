import 'package:flutter/material.dart';
import 'package:subscription_manager/variable/parameters.dart';//基本パラメータ
import 'package:page_transition/page_transition.dart';
import 'package:subscription_manager/GraphicalScreen.dart';
import 'package:subscription_manager/LookForScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  //メイン画面
  @override
  Widget build(BuildContext context) {
    //print(Colors.indigo[900].runtimeType);
    Color mainColor = Colors.indigo[900]!;
    return Scaffold(
        appBar: AppBar(
          title: Text(BaseParameters().title),//呼び出して当てはめる
          backgroundColor: mainColor,
          //backgroundColor: Colors.indigo[900],
          centerTitle: true,
          elevation: 0.0,
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: BaseParameters().currentIndexZero,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.savings_outlined),
                label: "ポートフォリオ"
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.add_chart_sharp),
                label: "詳細"
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.search),
                label: "検索"
            ),
          ],
        onTap: (int index) {
          if(index == 1){
            Navigator.pushReplacement(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: GraphicalScreen(),
                )
            );
          }else if(index == 2){
            Navigator.pushReplacement(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: LooKForScreen(),
                )
            );
          }
        }
      ),


    );
  }
}


