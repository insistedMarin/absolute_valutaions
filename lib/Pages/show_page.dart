import 'package:flutter/material.dart';
import 'package:managementdemo/Computation/computation.dart';

class showresult extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title:  Text("上一页"),
        ),
        body: Center(
          child:Container(
            padding: EdgeInsets.all(20),
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                  Column(
                    children:<Widget>[
                      Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Padding(padding: EdgeInsets.all(5),
                            child:Text(" 股票价格 ：",style: TextStyle(fontSize: 30,fontFamily: "ZHONG1",
                                color: Colors.white),),)
                          ),
            ]
          ),
                          Padding(padding: EdgeInsets.only(top: 25),
                            child:Text(Computaiton.stockPrice.toStringAsFixed(2),style: TextStyle(fontSize: 25,fontFamily: "Lobster",color: Colors.red),
                    overflow: TextOverflow.visible,)
                          )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          DecoratedBox(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Padding(padding: EdgeInsets.all(5),
                                child:Text(" W A C C ：",style: TextStyle(fontSize: 30,fontFamily: "ZHONG1",
                                    color: Colors.white),),)
                          ),
                        ]
                    ),
                    Padding(padding: EdgeInsets.only(top: 25),
                    child:Text(Computaiton.wacc_percent,style: TextStyle(fontSize: 25,fontFamily: "Lobster",color: Colors.red),
                    overflow: TextOverflow.visible,)
                    )
                  ],
                ),
                RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  child: Text("返回首页",style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: "ZHONG1",
                  ),),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.pushNamed(context, "bottombar_page");
                  },
                )
              ],
            ),
          )
        )
    );
  }
}