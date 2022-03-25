import 'package:flutter/material.dart';
import 'package:iwd2022/screens/needs.dart';
import 'package:iwd2022/screens/showRecettes.dart';
import 'package:iwd2022/screens/test_swiper.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    initialRoute: '/testSwiper', // initialisation de la route
    routes: {
      // '/showRecette': (context) => showRecettes(),
      '/needs': (context) => Needs(),
      '/testSwiper': (context) => TestSwiper(),
    },
  ));
}
