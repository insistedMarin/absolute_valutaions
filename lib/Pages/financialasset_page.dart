import 'package:flutter/material.dart';
import 'package:managementdemo/Computation/FinancialAsset_calc.dart';
class finAsset extends StatefulWidget {
  @override
  _finAssetState createState() => new _finAssetState();
}

class _finAssetState extends State<finAsset>{

  TextEditingController _financialAsset =new TextEditingController();
  TextEditingController _LTStockInvest =new TextEditingController();
  TextEditingController _lessOfStocksholderRights =new TextEditingController();
  TextEditingController _countOfStocksholderRights  =new TextEditingController();
  TextEditingController _generalCapital =new TextEditingController();


  final _formkey=new GlobalKey<FormState>();
  financialAsset_calc financialAsset = new financialAsset_calc();
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
                      child:Text("金融资产",style: TextStyle(
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
                            controller:   _financialAsset,
                            decoration: InputDecoration(
                              labelText: "金融资产",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _LTStockInvest,
                            decoration: InputDecoration(
                              labelText: "长期股权投资",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _lessOfStocksholderRights,
                            decoration: InputDecoration(
                              labelText: "少数股东权益",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _countOfStocksholderRights,
                            decoration: InputDecoration(
                              labelText: "股东权益合计",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _generalCapital,
                            decoration: InputDecoration(
                              labelText: "总股本",
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
                                    child: Text("提交",style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: "ZHONG1",
                                    ),),
                                    color: Theme.of(context).primaryColor,
                                    textColor: Colors.white,
                                    onPressed: (){
                                      if(financialAsset.getFinancialAsset(_financialAsset.text, _LTStockInvest.text, _lessOfStocksholderRights.text, _countOfStocksholderRights.text, _generalCapital.text))
                                        {
                                        financialAsset.financialAsset_Calc();
                                        Navigator.pushNamed(context, "growthrate_page");
                                        }

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
