import 'package:flutter/material.dart';

class growthrate extends StatefulWidget {
  @override
  _growthrateState createState() => new _growthrateState();
}

class _growthrateState extends State<growthrate>{

  TextEditingController _firstPartGrowthRate =new TextEditingController();
  TextEditingController _secondPartGrowthRate =new TextEditingController();
  TextEditingController _StockAddress =new TextEditingController();
  TextEditingController _equityCapitalCost =new TextEditingController();



  final _formkey=new GlobalKey<FormState>();

  void reset(){
    _formkey.currentState.reset();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title:  Text("上一页"),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child:Center(
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child:Text("增长率",style: TextStyle(
                          fontFamily: "ZHONG1",
                          fontSize: 40.0,
                          color: Colors.red
                      ),),),
                    Form(
                      key: _formkey,
                      autovalidate: true,
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
//                            autofocus: true,
                            controller:   _firstPartGrowthRate,
                            decoration: InputDecoration(
                              labelText: "第一阶段增长率",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _secondPartGrowthRate,
                            decoration: InputDecoration(
                              labelText: "第二阶段增长率",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _StockAddress,
                            decoration: InputDecoration(
                              labelText: "股票名称",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _equityCapitalCost,
                            decoration: InputDecoration(
                              labelText: "股权资本成本率",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 35.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: RaisedButton(
                                    padding:EdgeInsets.all(10.0),
                                    onPressed: (){reset();},
                                    child: Text('重置',style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "ZHONG1",
                                    ),),
                                    color: Theme.of(context).primaryColor,
                                    textColor: Colors.white,
                                  ),
                                  flex: 5,
                                ),
                                Spacer(
                                  flex: 2,
                                ),
                                Expanded(
                                  child: RaisedButton(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text("完成",style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "ZHONG1",
                                    ),),
                                    color: Theme.of(context).primaryColor,
                                    textColor: Colors.white,
                                    onPressed: (){
                                      Navigator.pushNamed(context, "show_page");
                                    },
                                  ),
                                  flex: 5,
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ]
              ),
            )
        )
    );

  }
}
