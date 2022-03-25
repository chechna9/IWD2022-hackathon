// ignore: file_names
import "package:flutter/material.dart";
import 'package:iwd2022/constants.dart';
import 'package:iwd2022/screens/Home.dart';
import 'package:iwd2022/screens/LetsCookies.dart';
import 'package:iwd2022/screens/menu.dart';

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
            title: "home",
            icon: Icon(Icons.home),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            title: "Ingredients",
            icon: Icon(Icons.receipt),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            title: "Needs",
            icon: Icon(Icons.list),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/needs');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          LinkTile(
            title: "Statistics",
            icon: Icon(Icons.stacked_bar_chart_sharp),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}

class LinkTile extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function onTap;
  const LinkTile(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {
        onTap();
      },
      tileColor: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
