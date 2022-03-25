import 'package:flutter/material.dart';
import 'package:iwd2022/screens/menu.dart';
import 'package:iwd2022/screens/showRecettes.dart';
import 'package:iwd2022/screens/statistics.dart';
void main()async  {
 
   
 runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Roboto",

    ),
    initialRoute: '/menu', // initialisation de la route
    routes: {
'/showRecette': (context) =>
           showRecettes(),  
'/statistics': (context) =>
           Statistics(),
'/menu': (context) =>
           MenuList(),
    },
  ));}
