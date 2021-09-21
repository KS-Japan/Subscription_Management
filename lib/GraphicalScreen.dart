import 'package:flutter/material.dart';
import 'package:subscription_manager/variable/parameters.dart';//基本パラメータ
import 'package:subscription_manager/MainScreen.dart';//基本パラメータ
import 'package:subscription_manager/LookForScreen.dart';
import 'package:page_transition/page_transition.dart';

class GraphicalScreen extends StatefulWidget {
  @override
  _GraphicalScreenState createState() => _GraphicalScreenState();
}

class _GraphicalScreenState extends State<GraphicalScreen>{
  //メイン画面
  @override
  Widget build(BuildContext context) {
    Color mainColor = Colors.indigo[900]!;
    return Scaffold(
      appBar: AppBar(
        title: Text(BaseParameters().titleGraphical),//呼び出して当てはめる
        backgroundColor: mainColor,
        //backgroundColor: Colors.indigo[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: BaseParameters().currentIndexOne,
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
            if(index == 0){
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: MainScreen(),
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