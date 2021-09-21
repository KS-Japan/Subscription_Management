import 'package:flutter/material.dart';
import 'package:subscription_manager/GraphicalScreen.dart';
import 'package:subscription_manager/variable/parameters.dart';//基本パラメータ
import 'package:subscription_manager/MainScreen.dart';//基本パラメータ
import 'package:page_transition/page_transition.dart';

class LooKForScreen extends StatefulWidget {
  @override
  _LooKForScreenState createState() => _LooKForScreenState();
}

class _LooKForScreenState extends State<LooKForScreen>{
  //メイン画面
  @override
  Widget build(BuildContext context) {
    //print(Colors.indigo[900].runtimeType);
    //int _currentIndex = 1;
    //final int num = 1;
    Color mainColor = Colors.indigo[900]!;
    return Scaffold(
      appBar: AppBar(
        title: Text(BaseParameters().titleLookFor),//呼び出して当てはめる
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: BaseParameters().currentIndexTwo,

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
            print(index);
            if(index == 0){
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: MainScreen(),
                  )
              );
            }else if(index == 1){
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: GraphicalScreen(),
                  )
              );
            }
          }
      ),
    );
  }
}