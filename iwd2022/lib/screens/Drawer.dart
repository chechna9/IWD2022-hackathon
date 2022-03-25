// ignore: file_names
import "package:flutter/material.dart";
import 'package:iwd2022/constants.dart';
import 'package:iwd2022/screens/Home.dart';
import 'package:iwd2022/screens/LetsCookies.dart';
import 'package:iwd2022/screens/menu.dart';

bool toggleHome = true;
bool togglIngr = false;
bool togglRecep = false;
bool togglNeeds = false;
bool togglStat = false;

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/ThinkQ.png"),
          ),
          LinkTile(
            toggle: toggleHome,
            title: "home",
            icon: Icon(Icons.home),
            onTap: () {
              setState(() {
                toggleHome = true;
                togglIngr = false;
                togglRecep = false;
                togglNeeds = false;
                togglStat = false;
              });
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            toggle: togglIngr,
            title: "Ingredients",
            icon: Icon(Icons.production_quantity_limits),
            onTap: () {
              setState(() {
                toggleHome = false;
                togglIngr = true;
                togglRecep = false;
                togglNeeds = false;
                togglStat = false;
              });
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            toggle: togglRecep,
            title: "Recepices",
            icon: Icon(Icons.receipt),
            onTap: () {
              setState(() {
                toggleHome = false;
                togglIngr = false;
                togglRecep = true;
                togglNeeds = false;
                togglStat = false;
              });
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            toggle: togglNeeds,
            title: "Needs",
            icon: Icon(Icons.list),
            onTap: () {
              setState(() {
                toggleHome = false;
                togglIngr = false;
                togglRecep = false;
                togglNeeds = true;
                togglStat = false;
              });
              Navigator.pushReplacementNamed(context, '/needs');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            toggle: togglStat,
            title: "Statistics",
            icon: Icon(Icons.stacked_bar_chart_sharp),
            onTap: () {
              setState(() {
                toggleHome = false;
                togglIngr = false;
                togglRecep = false;
                togglNeeds = false;
                togglStat = true;
              });
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}

class LinkTile extends StatefulWidget {
  final String title;
  final Icon icon;
  final Function onTap;
  bool toggle;
  LinkTile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.toggle})
      : super(key: key);

  @override
  State<LinkTile> createState() => _LinkTileState();
}

class _LinkTileState extends State<LinkTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: widget.icon,
        iconColor: widget.toggle ? Colors.white : Colors.black,
        title: Text(
          widget.title,
          style: TextStyle(color: widget.toggle ? Colors.white : Colors.black),
        ),
        onTap: () {
          widget.onTap();
        },
        tileColor: widget.toggle ? myBlue : Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
