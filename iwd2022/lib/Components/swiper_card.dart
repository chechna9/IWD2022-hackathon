import 'package:flutter/material.dart';
import 'package:iwd2022/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SwiperCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final int index;
  final int length;
  final double pourcentage;
  const SwiperCard(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.index,
      required this.length,
      required this.pourcentage})
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            widget.imagePath,
            fit: BoxFit.fill,
            width: double.infinity,
            height:   150,
          ),
 Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 8,),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: widget.index.toString(),
                    style: const TextStyle(
                      color: myRed,
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                        text: "/${widget.length.toString()}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                LinearPercentIndicator(
                  padding: const EdgeInsets.symmetric(horizontal: 55),
                  // width: 100.0,
                  lineHeight: 10.0,
                  percent: widget.pourcentage,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.red,
                ),
              ],
            ),
          
        ],
      ),
    );
  }
}
