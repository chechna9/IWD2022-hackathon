import 'package:flutter/material.dart';

import 'package:iwd2022/screens/DetailRecette.dart';
import 'package:iwd2022/screens/Drawer.dart';
import 'package:iwd2022/screens/Home.dart';
import 'package:iwd2022/screens/LetsCookies.dart';


import 'package:iwd2022/screens/menu.dart';
import 'package:iwd2022/screens/needs.dart';
import 'package:iwd2022/screens/showRecettes.dart';
import 'package:iwd2022/screens/statistics.dart';

import 'package:iwd2022/screens/test_swiper.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "rfg",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
       appBar:  AppBar(
       backgroundColor: Colors.white,
       leading: ElevatedButton(
         style: TextButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0),
         
         onPressed: () => _scaffoldKey.currentState!.openDrawer(),
         child: Container(
           padding: EdgeInsets.only(left: 7),
                     child : Image.asset(
                                     'home.png',
                                     width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.contain,    
                                       ),
                                       ),
       ) ,
      actions: [ Container(
        padding: EdgeInsets.only(right: 7),
                      child :Image.asset(
                                   'LG-LOGO.png',
                                   width: 70.0,
                                    height: 70.0,
                                    fit: BoxFit.cover,
                               
                                     ),
                    ),],

       ),
      body: DetailRecette(),
      
  drawer : MyDrawer()
    );
  }
}

