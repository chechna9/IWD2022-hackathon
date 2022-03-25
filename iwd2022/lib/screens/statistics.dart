import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:iwd2022/classes/statisticClass.dart';
import 'package:iwd2022/classes/statisticchart.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<StatisticClass> data = [
    StatisticClass(
        Day: "sunday",
        nbcalories: 350,
        color: charts.ColorUtil.fromDartColor(Colors.orange)),
    StatisticClass(
        Day: "monday",
        nbcalories: 600,
        color: charts.ColorUtil.fromDartColor(Colors.red)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            child: Container(
              padding: EdgeInsets.only(left: 7),
              child: Image.asset(
                'assets/home.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 7),
              child: Image.asset(
                'assets/LG-LOGO.png',
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: StatisticChart(data: data));
  }
}
