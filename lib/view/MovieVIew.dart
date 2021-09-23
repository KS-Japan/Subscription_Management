import 'package:flutter/material.dart';
import 'package:subscription_manager/variable/parameters.dart';//基本パラメータ
//import 'package:url_launcher/url_launcher.dart';//ハイパーリンク
import 'package:subscription_manager/MainScreen.dart';//基本パラメータ
import 'package:subscription_manager/LookForScreen.dart';
import 'package:subscription_manager/GraphicalScreen.dart';
import 'package:page_transition/page_transition.dart';

class MovieViewScreen extends StatefulWidget {
  @override
  _MovieViewScreenState createState() => _MovieViewScreenState();
}

class _MovieViewScreenState extends State<MovieViewScreen>{
  //メイン画面
  @override
  Widget build(BuildContext context) {
    Color mainColor = Colors.indigo[900]!;
    return Scaffold(
      appBar: AppBar(
        title: Text(BaseParameters().titleMovieView),//呼び出して当てはめる
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body:ListView(
        children: <Widget>[

          Card(
            child: ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text("Amazon Prime",style: TextStyle(fontSize: 20.0)),
              subtitle: Text('月額500円/年額4,900円',style: TextStyle(fontSize: 15.0)),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text("NETFLIX",style: TextStyle(fontSize: 20.0)),
              subtitle: Text('ベーシック：月額990円\nスタンダード：月額1490円\nプレミアム：月額1,980円',style: TextStyle(fontSize: 15.0)),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text("Hulu",style: TextStyle(fontSize: 20.0)),
              subtitle: Text('月額1,026円',style: TextStyle(fontSize: 15.0)),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text("Disney+",style: TextStyle(fontSize: 20.0)),
              subtitle: Text('月額770円',style: TextStyle(fontSize: 15.0)),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text("U-NEXT",style: TextStyle(fontSize: 20.0)),
              subtitle: Text('月額2,189円',style: TextStyle(fontSize: 15.0)),
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