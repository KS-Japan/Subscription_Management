import 'package:flutter/material.dart';
import 'package:subscription_manager/GraphicalScreen.dart';
import 'package:subscription_manager/variable/parameters.dart';//基本パラメータ
import 'package:subscription_manager/MainScreen.dart';//基本パラメータ
import 'package:page_transition/page_transition.dart';
import 'package:subscription_manager/view/BeautyVIew.dart';
import 'package:subscription_manager/view/FoodVIew.dart';
import 'package:subscription_manager/view/FurnitureVIew.dart';
import 'package:subscription_manager/view/GamesView.dart';
//import 'package:url_launcher/url_launcher.dart';//ハイパーリンク
import 'package:subscription_manager/view/PhoneVIew.dart';
import 'package:subscription_manager/view/MovieVIew.dart';
import 'package:subscription_manager/view/MusicVIew.dart';
import 'package:subscription_manager/view/BooksVIew.dart';
import 'package:subscription_manager/view/OtherVIew.dart';
import 'package:subscription_manager/view/RideVIew.dart';

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
        automaticallyImplyLeading: false,
      ),
      body://SingleChildScrollView(
        //child:ListView(
        ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.call),
                title: Text("携帯・通信",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: PhoneViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.movie),
                title: Text("動画配信",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: MovieViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.music_note),
                title: Text("音楽配信",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: MusicViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text("電子書籍配信",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: BooksViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.car_rental),
                title: Text("乗り物",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: RideViewScreen(),
                      )
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.dining),
                title: Text("食品",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: FoodViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("美容・ファッション",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: BeautyViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.tv),
                title: Text("家具家電",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: FurnitureViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.games),
                title: Text("ゲーム",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: GamesViewScreen(),
                      )
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.devices_other),
                title: Text("その他",style: TextStyle(fontSize: 32.0)),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: OtherViewScreen(),
                      )
                  );
                },
              ),
            ),
          ],
        ),
      //),
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
            //print(index);
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




