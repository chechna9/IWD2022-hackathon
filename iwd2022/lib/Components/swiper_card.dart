import 'package:flutter/material.dart';
import 'package:iwd2022/constants.dart';

class SwiperCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final int index;
  const SwiperCard(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.index})
      : super(key: key);

  @override
  State<SwiperCard> createState() => _SwiperCardState();
}

class _SwiperCardState extends State<SwiperCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            widget.imagePath,
            fit: BoxFit.fill,
            width: double.infinity,
            height: 150,
          ),
          Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text.rich(
                TextSpan(
                  text: widget.index.toString(),
                  style: TextStyle(
                    color: myRed,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
