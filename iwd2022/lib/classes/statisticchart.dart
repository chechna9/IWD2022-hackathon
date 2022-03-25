import 'package:flutter/material.dart';
import 'package:iwd2022/classes/statisticClass.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatisticChart extends StatelessWidget {
  final List<StatisticClass> data;
    StatisticChart({
  required this.data,

    });
  @override
  Widget build(BuildContext context) {
    List<charts.Series<StatisticClass , String >> series
    = [

      charts.Series(
        id:"statistics",
        data : data,
        domainFn: (StatisticClass series , _  )=>
        series.Day,
        measureFn: (StatisticClass series , _  )=>
        series.nbcalories,
        colorFn: (StatisticClass series , _  )=>
        series.color,
      )
    ];
    return Column(
 mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,      children: [
        Container(
          height: 400,
          padding: EdgeInsets.all(20),
          child : Card(

            child: Column(
              
              children:  <Widget>[
              Text("calories consomation statistics",
               style : Theme.of(context).textTheme.bodyText2,),
              Expanded(child: charts.BarChart(series , animate :true)) 
            ])
            ,)

        ),
      ],
    );
  }
}