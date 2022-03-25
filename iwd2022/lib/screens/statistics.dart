import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:iwd2022/classes/statisticClass.dart';
import 'package:iwd2022/classes/statisticchart.dart';
class Statistics extends StatefulWidget {
  const Statistics({ Key? key }) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  final List<StatisticClass> data =[
    StatisticClass(Day: "sunday", nbcalories: 350, color: charts.ColorUtil.fromDartColor(Colors.orange)),
    StatisticClass(Day: "monday", nbcalories: 600, color: charts.ColorUtil.fromDartColor(Colors.red)),




  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
                 backgroundColor:Colors.blue,
                 centerTitle: true,
                 title: Text(" i'm here") ,
      ) ,
       body : StatisticChart(data: data)
    );
  }
}