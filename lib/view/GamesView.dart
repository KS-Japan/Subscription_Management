import 'package:flutter/material.dart';
import 'package:subscription_manager/variable/parameters.dart';//基本パラメータ
//import 'package:url_launcher/url_launcher.dart';//ハイパーリンク
import 'package:subscription_manager/MainScreen.dart';//基本パラメータ
import 'package:subscription_manager/LookForScreen.dart';
import 'package:subscription_manager/GraphicalScreen.dart';
import 'package:page_transition/page_transition.dart';

class GamesViewScreen extends StatefulWidget {
  @override
  _GamesViewScreenState createState() => _GamesViewScreenState();
}

class _GamesViewScreenState extends State<GamesViewScreen>{
  //メイン画面
  @override
  Widget build(BuildContext context) {
    Color mainColor = Colors.indigo[900]!;
    return Scaffold(
      appBar: AppBar(
        title: Text(BaseParameters().titleGamesView),//呼び出して当てはめる
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body:ListView(
          children: <Widget>[

            Card(
              child: ListTile(
                leading: Icon(Icons.circle_outlined),
                title: Text("Nintendo Switch Online",style: TextStyle(fontSize: 20.0)),
                subtitle: Text('月額306円',style: TextStyle(fontSize: 15.0)),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.circle_outlined),
                title: Text("PlayStation Now",style: TextStyle(fontSize: 20.0)),
                subtitle: Text('月額1,180円/年額6,980円',style: TextStyle(fontSize: 15.0)),
                onTap: () {},
              ),
            ),

          ]
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