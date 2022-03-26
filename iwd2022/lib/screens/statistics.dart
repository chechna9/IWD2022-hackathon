import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:iwd2022/classes/statisticClass.dart';
import 'package:iwd2022/classes/statisticchart.dart';
import 'package:iwd2022/constants.dart';

import 'Drawer.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    toggleHome = false;
    togglIngr = false;
    togglRecep = false;
    togglNeeds = false;
    togglStat = true;
  }

  final List<StatisticClass> data = [
    StatisticClass(
        Day: "S",
        nbcalories: 350,
        color: charts.ColorUtil.fromDartColor(Colors.orange)),
    StatisticClass(
        Day: "D",
        nbcalories: 600,
        color: charts.ColorUtil.fromDartColor(myRed)),
    StatisticClass(
        Day: "L",
        nbcalories: 700,
        color: charts.ColorUtil.fromDartColor(myRed)),
    StatisticClass(
        Day: "M",
        nbcalories: 500,
        color: charts.ColorUtil.fromDartColor(myRed)),
    StatisticClass(
        Day: "M",
        nbcalories: 200,
        color: charts.ColorUtil.fromDartColor(myBlue)),
    StatisticClass(
        Day: "J",
        nbcalories: 185,
        color: charts.ColorUtil.fromDartColor(myBlue)),
    StatisticClass(
        Day: "V",
        nbcalories: 400,
        color: charts.ColorUtil.fromDartColor(Colors.orange)),
  ];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_sharp,
              color: Color.fromARGB(255, 66, 61, 61),
              size: 35,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.translate(
            offset: Offset(0, -90),
            child: Text(
              "les calories consommées :",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          StatisticChart(data: data),
        ],
      ),
    );
  }
}
