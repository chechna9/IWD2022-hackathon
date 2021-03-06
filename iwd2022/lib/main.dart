import 'package:flutter/material.dart';

import 'package:iwd2022/screens/showRecettes.dart';
import 'package:iwd2022/screens/Drawer.dart';
import 'package:iwd2022/screens/Home.dart';
import 'package:iwd2022/screens/LetsCookies.dart';

import 'package:iwd2022/screens/menu.dart';
import 'package:iwd2022/screens/needs.dart';
import 'package:iwd2022/screens/showRecettes.dart';
import 'package:iwd2022/screens/splashScreen.dart';
import 'package:iwd2022/screens/statistics.dart';

import 'package:iwd2022/screens/test_swiper.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: '/splashScreen', // initialisation de la route
      routes: {
        '/splashScreen': (context) => SplashScreen(),
        '/showRecette': (context) => LetsCookies(),
        '/statistics': (context) => Statistics(),
        '/menu': (context) => MenuList(),
        '/needs': (context) => Needs(),
        '/home': (context) => MyHome(),
        '/detailRecette': (context) => showRecettes()
      },
    ),
  );
}
