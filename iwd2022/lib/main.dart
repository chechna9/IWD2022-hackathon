import 'package:flutter/material.dart';
import 'package:iwd2022/screens/needs.dart';
import 'package:iwd2022/screens/showRecettes.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    initialRoute: '/needs', // initialisation de la route
    routes: {
      // '/showRecette': (context) => showRecettes(),
      '/needs': (context) => Needs(),
    },
  ));
}
