import "package:flutter/material.dart";
import 'package:iwd2022/screens/Drawer.dart';

class showRecettes extends StatefulWidget {
  const showRecettes({Key? key}) : super(key: key);

  @override
  State<showRecettes> createState() => _showRecettesState();
}

class _showRecettesState extends State<showRecettes> {
  List ingredient = [
    "Oliveoil",
    "250g streky",
    "red chilli",
    "pepper"
        "red chilli",
    "basile",
    "pasta",
    "1 cop white win",
    "2 tdsp sugar",
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
          onPressed: () =>
              Navigator.pushReplacementNamed(context, "/showRecette"),
          child: Container(
              padding: EdgeInsets.only(left: 7),
              child: Icon(
                Icons.arrow_back,
                size: 28,
                color: Colors.black,
              )),
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
      body: SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Image(
                image: AssetImage("assets/recette.png"),
                height: 250,
                width: 900,
                fit: BoxFit.cover,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Simple Amatriciana',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0XFFC40552),
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                        Text(
                          'easy / 45min ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          'Ingredient',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0XFFC40552),
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/ingredient.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[0],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/ingredient.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[1],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(children: [
                              Image(
                                image: AssetImage("assets/Vector1.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[2],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ])),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/Vector1.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[3],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/ingredient.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[4],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(children: [
                              Image(
                                image: AssetImage("assets/Vector1.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[5],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(children: [
                              Image(
                                image: AssetImage("assets/Vector1.png"),
                                width: 12,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                ingredient[6],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ])),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 15),
                                backgroundColor:
                                    Color.fromARGB(255, 33, 190, 201)),
                            child: Container(
                              width: 160,
                              child: Row(
                                children: [
                                  Text("pass all commande"),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Instruction',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0XFFC40552),
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "Chop the bacon into rough strips, dice or crush the garlic and thinly slice the chilli (remove seeds)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "Chop the bacon into rough strips, dice or crush the garlic and thinly slice the chilli (remove seeds)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "Chop the bacon into rough strips, dice or crush the garlic and thinly slice the chilli (remove seeds)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            "Chop the bacon into rough strips, dice or crush the garlic and thinly slice the chilli (remove seeds)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ]))
            ])),
      ),
    );
  }
}
