import 'dart:js';

import 'package:flutter/material.dart';
import 'package:iwd2022/screens/Home.dart';


import 'package:iwd2022/screens/menu.dart';
import 'package:iwd2022/screens/needs.dart';
import 'package:iwd2022/screens/showRecettes.dart';
import 'package:iwd2022/screens/statistics.dart';
void main()async  {
 
   
 runApp(MaterialApp(
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
        primarySwatch: Colors.blue,
      ),
    debugShowCheckedModeBanner: false,

    initialRoute: '/home', // initialisation de la route
    routes: {
                 '/home' : (context) => MyHome(),
'/showRecette': (context) =>
           MyHome(),  
'/statistics': (context) =>
           MyHome(),

'/menu': (context) =>
           MyHome(),
      '/needs': (context) => const MyHome()
    }));}
      

