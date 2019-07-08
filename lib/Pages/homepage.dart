import 'package:flutter/material.dart';

class homePage extends StatefulWidget{

  @override
  _homePageState createState()=>_homePageState();
}
class _homePageState extends State<homePage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("开始计算",style: TextStyle(
          fontSize: 45.0,
          fontFamily: "ZHONG1"
        ),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: (){
            Navigator.pushNamed(context, "STloan_page");
          }),
    );
  }
}