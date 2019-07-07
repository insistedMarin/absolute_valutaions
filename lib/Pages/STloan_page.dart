import 'package:flutter/material.dart';
import 'package:managementdemo/Computation/STloan_calc.dart';

class STLoan extends StatefulWidget {

  @override
  _STLoanState createState() => _STLoanState();
}

class _STLoanState extends State<STLoan> {

  TextEditingController _shotTimeLoan =new TextEditingController();
  TextEditingController _interestPayable =new TextEditingController();
  TextEditingController _shortTimeBondsPayable =new TextEditingController();
  TextEditingController _tradingFinancialLiabilities =new TextEditingController();
  TextEditingController _holdingLiabilitiesForSale =new TextEditingController();
  TextEditingController _NonCurrentLiabilitiesWithinYear=new TextEditingController();

  final _formkey=new GlobalKey<FormState>();
  STdebtCapital_calc STDCaptial=new STdebtCapital_calc();
  void reset(){
    _formkey.currentState.reset();
  }


  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("上一页"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child:Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child:Text("短期借款",style: TextStyle(
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
//                        Text("短期债务",textScaleFactor: 2.5,),
                            TextFormField(
//                              autofocus: true,
                              controller: _shotTimeLoan,
                              decoration: InputDecoration(
                                labelText: "短期借贷",
                                icon: Icon(Icons.stars),
                              ),
                              validator: (v){
                                return v.trim()
                                    .length>0?null:"输入不能为空";
                              },
                            ),
                            TextFormField(
//                    autofocus: true,
                              controller: _interestPayable,
                              decoration: InputDecoration(
                                labelText: "应付利息",
                                icon: Icon(Icons.stars),
                              ),
                              validator: (v){
                                return v.trim()
                                    .length>0?null:"输入不能为空";
                              },
                            ),
                            TextFormField(
//                          autofocus: true,
                              controller: _shortTimeBondsPayable,
                              decoration: InputDecoration(
                                labelText: "应付短期债券",
                                icon: Icon(Icons.stars),
                              ),
                              validator: (v){
                                return v.trim()
                                    .length>0?null:"输入不能为空";
                              },
                            ),
                            TextFormField(
//                          autofocus: true,
                              controller: _tradingFinancialLiabilities,
                              decoration: InputDecoration(
                                labelText: "交易性金融负债",
                                icon: Icon(Icons.stars),
                              ),
                              validator: (v){
                                return v.trim()
                                    .length>0?null:"输入不能为空";
                              },
                            ),
                            TextFormField(
//                          autofocus: true,
                              controller: _holdingLiabilitiesForSale,
                              decoration: InputDecoration(
                                labelText: "持有待售负债",
                                icon: Icon(Icons.stars),
                              ),
                              validator: (v){
                                return v.trim()
                                    .length>0?null:"输入不能为空";
                              },
                            ),
                            TextFormField(
//                          autofocus: true,
                              controller: _NonCurrentLiabilitiesWithinYear,
                              decoration: InputDecoration(
                                labelText: "一年内到期的非流动负债",
                                icon: Icon(Icons.stars),
                              ),
                              validator: (v){
                                return v.trim()
                                    .length>0?null:"输入不能为空";
                              },
                            ),])),
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
//                              STDCaptial.getSTloan(_shortTimeLoan.text, _bondsPayable.text, _longTimePayable.text, _interestExpense.text, _incomeTax.text, _totalProfit.text);
//                              if(STDCaptial.isNonZero())
//                              {
//                                STDCaptial.LTdebtCapital();
                                Navigator.pushNamed(context, "LTloan_page");
//                              }
                            },
                          ),
                          flex: 5,
                        )
                      ],
                    ),
                  )
//                  Padding(
//                    padding: EdgeInsets.only(top: 30),
//                    child:
//
//                    RaisedButton(
//                      splashColor: Colors.black,
//                      color: Colors.white,
//                      padding: EdgeInsets.all(0),
//                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//                      child: Container(
//                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
//                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(30),
//                          gradient: RadialGradient(
//                              colors: [Colors.orange,Colors.purple],
//                              radius: 1.7,
//                              center: Alignment.topLeft),
//                        ),
//                        child: Text("下一页",style: TextStyle(
//                            color: Colors.white,
//                            fontSize: 18
//                        ),),
//                      ),
////                                  textColor: Colors.white,
//                      onPressed: (){
//                        STDCaptial.getSTloan(_shotTimeLoan.text,_interestPayable.text,_shortTimeBondsPayable.text,_tradingFinancialLiabilities.text,_holdingLiabilitiesForSale.text,_NonCurrentLiabilitiesWithinYear.text);
//                        if(STDCaptial.isNonZero())
//                        {
//
//                          Navigator.pushNamed(context, "LTloan_page");
//                        }
//                      },
//                    ),
//
//                  ),
                ]
            )
        ),
      ),
    );
  }}
