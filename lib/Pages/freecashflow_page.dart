import 'package:flutter/material.dart';
import 'package:managementdemo/Computation/FCF_calc.dart';

class FreeCaF extends StatefulWidget {
  @override
  _FreeCaFState createState() => new _FreeCaFState();
}

class _FreeCaFState extends State<FreeCaF>{

  TextEditingController _netCashFlowInOperating =new TextEditingController();
  TextEditingController _impairmentOfAssets =new TextEditingController();
  TextEditingController _depreciationOfFixedAssets =new TextEditingController();
  TextEditingController _amortizationOfIntangibleAssets  =new TextEditingController();
  TextEditingController _amortOfLTAmortizationExpense =new TextEditingController();
  TextEditingController _lossOfAssets=new TextEditingController();

  final _formkey=new GlobalKey<FormState>();
  FCF_calc FCF = new FCF_calc();

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
                      child:Text("自由现金流",style: TextStyle(
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
                            controller: _netCashFlowInOperating ,
                            decoration: InputDecoration(
                              labelText: "经营产生的现金流量净额",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _impairmentOfAssets,
                            decoration: InputDecoration(
                              labelText: "资产减值准备",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _depreciationOfFixedAssets,
                            decoration: InputDecoration(
                              labelText: "固定资产折旧",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _amortizationOfIntangibleAssets,
                            decoration: InputDecoration(
                              labelText: "无形资产摊销",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _amortOfLTAmortizationExpense,
                            decoration: InputDecoration(
                              labelText: "长期待摊销资产摊销",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _lossOfAssets,
                            decoration: InputDecoration(
                              labelText: "固定资产长期资产和其它资产损失",
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
                                        if(FCF.getFCF(_netCashFlowInOperating.text, _impairmentOfAssets.text, _depreciationOfFixedAssets.text, _amortizationOfIntangibleAssets.text, _amortOfLTAmortizationExpense.text, _lossOfAssets.text))
                                        {
                                          FCF.freeCashFlow_calc();
                                          Navigator.pushNamed(context,"financialasset_page");
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
