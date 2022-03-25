// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:iwd2022/classes/recette.dart';
import 'package:iwd2022/components/swiper_card.dart';
import 'package:iwd2022/screens/LetsCookies.dart';
import 'package:iwd2022/screens/menu.dart';
import 'package:iwd2022/screens/test_swiper.dart';

class MyBottonSheet extends StatefulWidget {
  const MyBottonSheet({Key? key}) : super(key: key);

  @override
  State<MyBottonSheet> createState() => _MyBottonSheetState();
}

class _MyBottonSheetState extends State<MyBottonSheet> {
  List<ProductDataModel> recepies = [
    ProductDataModel(
        category: "Soupe",
        description: "Description",
        imageURL: "assets/soup1.png",
        ingredient: "ingredient",
        name: "Soupe Portugaise"),
    ProductDataModel(
        category: "Soupe",
        description: "Description",
        imageURL: "assets/soup1.png",
        ingredient: "ingredient",
        name: "Soupe Portugaise"),
    ProductDataModel(
        category: "Soupe",
        description: "Description",
        imageURL: "assets/soup1.png",
        ingredient: "ingredient",
        name: "Soupe Portugaise"),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        // ignore: prefer_const_literals_to_create_immutables
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MenuList()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "16 ingredient",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                width: 5,
              ),
              const Icon(Icons.arrow_right_alt,
                  color: Colors.redAccent, size: 18)
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(209, 235, 233, 233),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular((50)),
                  topRight: Radius.circular(50))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Recipies",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Breakfast",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: 12,
                      height: 3,
                      color: Colors.black,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Lunch",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xffC40552)),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: 12,
                      height: 3,
                      color: Color(0xffC40552),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Dinner",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: 12,
                      height: 3,
                      color: Colors.black,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Dessert",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: 12,
                      height: 3,
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
            TestSwiper()
          ]),
        ))
      ]),
    );
  }
}
