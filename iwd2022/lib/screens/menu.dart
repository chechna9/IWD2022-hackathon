import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Transform.rotate(
              angle: 3.15,
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
            onPressed: () async {},
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("LET'S COOK"),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 15),
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 5,
                children: [
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                  MenuCard(),
                ],
              ),
            ),
          ],
        ));
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: 75.0,
                  height: 75.0,
                  child: Image.asset(
                    'tomate.png',
                    width: 75.0,
                    height: 75.0,
                  ),
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: 100.0,
                  lineHeight: 10.0,
                  percent: 0.75,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.red,
                ),
              ],
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6, right: 6),
                    child: Text(
                      "Tomato",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6, right: 6),
                    child: Text("few days!"),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
