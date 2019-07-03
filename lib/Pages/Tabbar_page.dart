import 'package:flutter/material.dart';
import 'package:managementdemo/Pages/login_page.dart';
import 'package:managementdemo/Pages/LTloan_page.dart';
import 'package:managementdemo/Pages/STloan_page.dart';

class tabBar extends StatefulWidget{
  @override
  _tabBarState createState()=>_tabBarState();
}

class _tabBarState extends State<tabBar>
  with SingleTickerProviderStateMixin{
    TabController _tarController;
    List<Widget> _childern=[new Login(),new LTLoan(),new STLoan()];
    List<Widget> tabs=[
      new Tab(
        icon: new Icon(Icons.account_circle),
        text: "un",
      ),
    new Tab(
    icon: new Icon(Icons.school),
    text: "deux",
    ),
    new Tab(
    icon: new Icon(Icons.home),
    text: "trois",
    )
    ];
    @override
  void initState(){
      super.initState();
      _tarController=TabController(length: tabs.length, vsync: this);
  }
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: PreferredSize(
            child:AppBar(
            backgroundColor: Colors.red,
              bottom: TabBar(tabs: tabs.toList(),
             controller: _tarController,),
            ),
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.12),
      ),
        body: TabBarView(children: _childern,
        controller: _tarController,),
      );
  }}
