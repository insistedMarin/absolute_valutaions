import 'package:flutter/material.dart';
import 'package:managementdemo/Pages/login_page.dart';
import 'package:managementdemo/Pages/LTloan_page.dart';
import 'package:managementdemo/Pages/STloan_page.dart';
import 'package:managementdemo/Pages/Tabbar_page.dart';
import 'package:managementdemo/Pages/form_demo.dart';
import 'package:managementdemo/Pages/myDrawer.dart';
import 'package:managementdemo/Pages/homepage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  int _currentIndex=0;
//  final List<Widget> _children=[new Login(),new STLoan()];
//  final List<BottomNavigationBarItem> _list=<BottomNavigationBarItem>[
//
////    BottomNavigationBarItem(icon: Icon(Icons.filter_2),
////      title: Text("长期借款"),
////      backgroundColor: Colors.red
////    ),
//    BottomNavigationBarItem(icon: Icon(Icons.people),
//      title: Text("登陆界面"),
//      backgroundColor: Colors.red
//    ),
//    BottomNavigationBarItem(icon: Icon(Icons.computer),
//        title: Text("短期借款"),
//        backgroundColor: Colors.red
//    ),
//    BottomNavigationBarItem(icon: Icon(Icons.filter_4),
//    title: Text("顶部tab"),
//    backgroundColor: Colors.red
//    )
//  ];
//  void onTabTapped(int index){
//    setState(() {
//      _currentIndex = index;
//    });
//  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Absolute",style: TextStyle(fontSize: 20,fontFamily: "Lobster"),),
            Text("Valuations",style: TextStyle(fontSize: 25,fontFamily: "Lobster"),)
          ],
        ),
//        Text("Absolute Valuations",style: TextStyle(
//          fontFamily: "Anton",
//          fontSize: 25
//          ),
//          ),
        leading: Builder(builder: (context){
          return Icon(Icons.translate);
        }),
//        actions: <Widget>[
//          IconButton(icon: Icon(Icons.share),onPressed: (){},)
//        ],
//        elevation: 0,
        centerTitle: true,
      ),
      drawer: new MyDrawer(),
//      bottomNavigationBar: BottomNavigationBar(
//        backgroundColor: Colors.red,
//        fixedColor: Colors.white,
//        type: BottomNavigationBarType.shifting,
//        currentIndex: _currentIndex,
//        onTap: onTabTapped,
//        items: _list,
//      ),
      body: new homePage()
//      _children[_currentIndex],
//      floatingActionButton: FloatingActionButton(onPressed: ()=>{},
//        child: Icon(Icons.add_alert),


//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}