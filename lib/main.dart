import 'package:flutter/material.dart';
//import 'computation.dart';
import 'package:managementdemo/Pages/bottombar_page.dart';
import 'package:managementdemo/Pages/STloan_page.dart';
import 'package:managementdemo/Pages/LTloan_page.dart';
import 'package:managementdemo/Pages/login_page.dart';
import 'package:managementdemo/Pages/freecashflow_page.dart';
import 'package:managementdemo/Pages/financialasset_page.dart';
import 'package:managementdemo/Pages/growthrate_page.dart';
import 'package:managementdemo/Pages/show_page.dart';
//import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      routes: {'STloan_page': (context) => STLoan(),
                'LTloan_page':(context)=>LTLoan(),
                'login_page':(context)=>Login(),
                'bottombar_page':(context)=>MyHomePage(),
                'freecashflow_page':(context)=>FreeCaF(),
                'financialasset_page':(context)=>finAsset(),
                'growthrate_page':(context)=>growthrate(),
                'show_page':(context)=>showresult()},
    );
  }
}
