import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iwd2022/Components/swiper_card.dart';
import 'package:iwd2022/classes/recette.dart';

class TestSwiper extends StatefulWidget {
  const TestSwiper({Key? key}) : super(key: key);

  @override
  State<TestSwiper> createState() => _TestSwiperState();
}

class _TestSwiperState extends State<TestSwiper> {
  List<ProductDataModel> recepies = [
    ProductDataModel(
        category: "Soupe",
        description: "Description",
        imageURL: "assets/recette1.jpg",
        ingredient: "ingredient",
        name: "Soupe Portugaise"),
    ProductDataModel(
        category: "Soupe",
        description: "Description",
        imageURL: "assets/recette2.jpg",
        ingredient: "ingredient",
        name: "Soupe Portugaise"),
    ProductDataModel(
        category: "Soupe",
        description: "Description",
        imageURL: "assets/recette3.jpg",
        ingredient: "ingredient",
        name: "Soupe Portugaise"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: CarouselSlider.builder(
          itemCount: recepies.length,
          itemBuilder: ((context, index, realIndex) => SwiperCard(
                imagePath: recepies[index].imageURL!,
                title: recepies[index].name!,
                index: index + 1,
                length: recepies.length,
                pourcentage: 0.25, // between 0 and 1
              )),
          options: CarouselOptions(
            autoPlay: false,
            viewportFraction: 0.5,
            height: 290,
            enlargeCenterPage: true,
          ),
        ));
  }
}
