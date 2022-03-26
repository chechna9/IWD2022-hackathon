// ignore: file_names
import 'dart:async';

import "package:flutter/material.dart";
import 'package:flutter/scheduler.dart';
import 'package:iwd2022/components/myBottomSheet.dart';
import 'package:iwd2022/constants.dart';
import 'package:iwd2022/screens/Drawer.dart';

class LetsCookies extends StatefulWidget {
  const LetsCookies({Key? key}) : super(key: key);

  @override
  State<LetsCookies> createState() => _LetsCookiesState();
}

class _LetsCookiesState extends State<LetsCookies> {
  var isModal = true;

  void _show(BuildContext ctx) {
    showModalBottomSheet(
      barrierColor: Colors.white.withOpacity(0),
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      elevation: 0,
      context: ctx,
      builder: (ctx) => FractionallySizedBox(
        heightFactor: 0.65,
        child: Container(
          width: 300,
          height: 500,
          color: Colors.white54,
          alignment: Alignment.center,
          child: const MyBottonSheet(),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.run(() {
      _show(context);
      toggleHome = false;
      togglIngr = false;
      togglRecep = true;
      togglNeeds = false;
      togglStat = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _show(context);
        },
        backgroundColor: myRed,
        child: Icon(
          Icons.arrow_drop_up,
        ),
      ),
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
        children: [
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () => {_show(context)},
            child: Text(
              "Lets cookie",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xFFE5E5E5), width: 1)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/tomato.png"),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Tomato",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xFFE5E5E5), width: 1)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/LGM4.png"),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Cucumber",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xFFE5E5E5), width: 1)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/LGM3.png"),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Onions",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xFFE5E5E5), width: 1)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/lgm1.png"),
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Pepper",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
