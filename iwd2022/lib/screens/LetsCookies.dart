// ignore: file_names
import "package:flutter/material.dart";
import 'package:iwd2022/components/myBottomSheet.dart';

class LetsCookies extends StatefulWidget {
  const LetsCookies({ Key? key }) : super(key: key);

  @override
  State<LetsCookies> createState() => _LetsCookiesState();
}

class _LetsCookiesState extends State<LetsCookies> {

  
  void _show(BuildContext ctx) {
    showModalBottomSheet(
      barrierColor: Colors.white.withOpacity(0),
        isDismissible: false,
        enableDrag: false,
        isScrollControlled:true,
        elevation: 0,
        context: ctx,
        builder: (ctx) => FractionallySizedBox(
        heightFactor: 0.63,child: Container(
              width: 300,
              height: 800,
              color: Colors.white54,
              alignment: Alignment.center,
              child: const MyBottonSheet()
            )));
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    SizedBox(height: 30,),
    TextButton(onPressed: ()=>{
          _show(context)
    }, child: Text("Lets cookie" ,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black), ),),
    SizedBox(height: 30,),
    Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xFFE5E5E5),width: 1)),
            child: Row(
              children: [
                 Image(image:  AssetImage("assets/tomato.png"),height: 25,width:    25,fit: BoxFit.cover,),
                SizedBox(width: 12),
                Text("Tomato" , style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),)
              ],
            ),
            
          ),
            Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xFFE5E5E5),width: 1)),
            child: Row(
              children: [
                 Image(image:  AssetImage("assets/tomato.png"),height: 25,width:    25,fit: BoxFit.cover,),
                SizedBox(width: 12),
                Text("Tomato" , style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),)
              ],
            ),
            
          )
        ],
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xFFE5E5E5),width: 1)),
            child: Row(
              children: [
                 Image(image:  AssetImage("assets/tomato.png"),height: 25,width:    25,fit: BoxFit.cover,),
                SizedBox(width: 12),
                Text("Tomato" , style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),)
              ],
            ),
            
          ),
            Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xFFE5E5E5),width: 1)),
            child: Row(
              children: [
                 Image(image:  AssetImage("assets/tomato.png"),height: 25,width:    25,fit: BoxFit.cover,),
                SizedBox(width: 12),
                Text("Tomato" , style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),)
              ],
            ),
            
          )
        ],
      ),


    ],)
      ],
    ) ;
  }
}