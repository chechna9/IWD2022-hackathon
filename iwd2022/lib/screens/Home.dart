import "package:flutter/material.dart";

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff6E928E)),
      child: Column(
        children: [
            Text("BienVenue dans votre refregirateur"),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Color(0xFFE5E5E5)),),
                      child: Column(children: [
                        Icon(Icons.add , size: 24,color: Colors.black,),
                        Text("Needs",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color: Colors.black),)
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Color(0xFFE5E5E5)),),
                      child: Column(children: [
                        Icon(Icons.add , size: 24,color: Colors.black,),
                        Text("Needs",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color: Colors.black),)
                      ]),
                    )
                  ],
                )
              ],
            )
        ],

      ),
    );
  }
}