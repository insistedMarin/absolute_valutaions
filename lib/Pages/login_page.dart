import 'package:flutter/material.dart';
import 'package:managementdemo/Computation/FCF_calc.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _uname = new TextEditingController();
  TextEditingController _key = new TextEditingController();
  GlobalKey _formkey = new GlobalKey();
  FCF_calc FCF = new FCF_calc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar:AppBar(
//          title:Text("用户登录"),
//    ),
        body:SingleChildScrollView(padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 5),
          child:Form(
            autovalidate: true,
            key: _formkey,
            child:Column(
              children: <Widget>[
                TextFormField(
//                  autofocus: true,
                  controller: _uname,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "username",
                      icon: Icon(Icons.person)
                  ),
                  validator: (v){
                    return v
                        .trim()
                        .length > 0 ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                    controller: _key,
                    decoration:InputDecoration(
                        labelText: "密码",
                        hintText: "password",
                        icon: Icon(Icons.lock)
                    ),
                    obscureText: true,
                    validator: (v) {
                      return v
                          .trim()
                          .length > 5 ? null : "密码不能少于6位";
                    }
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 120.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child:RaisedButton(
                              padding: EdgeInsets.all(10.0),
                              child: Text('登陆',style: TextStyle(fontSize: 15.0),),
                              color: Theme
                                  .of(context)
                                  .primaryColor,
                              textColor: Colors.white,
                              onPressed: (
                                  ){
                                if((_formkey.currentState as FormState).validate()){
                                  print(_uname.text);
                                  print(_key.text);
                                }

                                FCF.calculate();
                                Navigator.pushNamed(context, 'bottombar_page');
                              })
                      )
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(top: 40,right: 200),
                  constraints: BoxConstraints.tightFor(width: 180,height: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: RadialGradient(
                          colors: [Colors.blue,Colors.orange],
                          center: Alignment.topLeft,
                          radius: 1.5
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 5.0
                        )
                      ]

                  ),
//                  transform: Matrix4.rotationZ(.4),
                  alignment: Alignment.center,
                  child: Text("Bien sur!",style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "Lobster",
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,right: 200),
                  constraints: BoxConstraints.tightFor(width: 180,height: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: RadialGradient(
                          colors: [Colors.blue,Colors.orange],
                          center: Alignment.bottomCenter,
                          radius: 1.5
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 5.0
                        )
                      ]

                  ),
//                  transform: Matrix4.rotationZ(0.4),
                  alignment: Alignment.center,
                  child: Text(r"D'accord",style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "Lobster",
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,right: 200,bottom: 40),
                  constraints: BoxConstraints.tightFor(width: 180,height: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: RadialGradient(
                          colors: [Colors.orange,Colors.blue],
                          center: Alignment.topLeft,
                          radius: 1.7
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 5.0
                        )
                      ]

                  ),
//                  transform: Matrix4.rotationZ(0.4),
                  alignment: Alignment.center,
                  child: Text("Pourquoi?",style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "Lobster",
                  ),),
                )
              ],
            ),
          ),
        ),



    );
  }}