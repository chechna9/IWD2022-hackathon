import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "LET'S COOK",
            style: TextStyle(fontFamily: "Roboto", fontSize: 36),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 15),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 5,
              children: [
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 80,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 70,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 75,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 20,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.red,
                  Percent: 10,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 90,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 80,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 80,
                ),
                MenuCard(
                  name: "tomato",
                  duration: "few days",
                  imageUrl: "tomate.png",
                  color: Colors.blue,
                  Percent: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      required this.Percent,
      required this.imageUrl,
      required this.name,
      required this.duration,
      required this.color})
      : super(key: key);
  final String imageUrl;
  final String name;
  final String duration;
  final Color color;
  final int Percent;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(10, -8),
                  child: Image.asset(
                    '$imageUrl',
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "$name",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearPercentIndicator(
                  width: 85.0,
                  lineHeight: 11.0,
                  percent: Percent / 100,
                  backgroundColor: Colors.grey,
                  progressColor: color,
                ),
                Transform.translate(
                  offset: Offset(-8, 0),
                  child: Text(
                    "$duration",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
