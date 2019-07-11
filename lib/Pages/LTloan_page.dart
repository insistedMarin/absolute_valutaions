import 'package:flutter/material.dart';
import 'package:managementdemo/Computation/LTloan_calc.dart';

class LTLoan extends StatefulWidget {
  @override
  _LTLoanState createState() => new _LTLoanState();
}

class _LTLoanState extends State<LTLoan>{

  TextEditingController _longTimeLoan =new TextEditingController();
  TextEditingController _bondsPayable =new TextEditingController();
  TextEditingController _longTimePayable =new TextEditingController();
  TextEditingController _interestExpense =new TextEditingController();
  TextEditingController _incomeTax =new TextEditingController();
  TextEditingController _totalProfit=new TextEditingController();

  final _formkey=new GlobalKey<FormState>();
  LTdebtCapital LTDCaptial = new LTdebtCapital();

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
                    child:Text("长期借款",style: TextStyle(
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
                            controller: _longTimeLoan,
                            decoration: InputDecoration(
                              labelText: "长期借款",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _bondsPayable,
                            decoration: InputDecoration(
                              labelText: "应付债券",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _longTimePayable,
                            decoration: InputDecoration(
                              labelText: "长期应付款",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _interestExpense,
                            decoration: InputDecoration(
                              labelText: "利息支出总额",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _incomeTax,
                            decoration: InputDecoration(
                              labelText: "所得税",
                              icon: Icon(Icons.stars),
                            ),
                            validator: (v){
                              return v.trim()
                                  .length>0?null:"输入不能为空";
                            },
                          ),
                          TextFormField(
//                            autofocus: true,
                            controller: _totalProfit,
                            decoration: InputDecoration(
                              labelText: "利润总额",
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

                                      if(LTDCaptial.getLTloan(_longTimeLoan.text, _bondsPayable.text, _longTimePayable.text, _interestExpense.text, _incomeTax.text, _totalProfit.text))
                                        {
                                          LTDCaptial.LTdebtCapital_Calc();
                                          Navigator.pushNamed(context, "freecashflow_page");
                                        }
//                                      if(LTDCaptial.isNonZero())
//                                      {
//                                        LTDCaptial.LTdebtCapital();

//                                      }
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
