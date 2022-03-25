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
          SizedBox(height: 40,),
          Padding(padding: EdgeInsets.only(left: 10 , right: 10),child:  Text("BienVenue dans votre refregirateur",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold , fontSize:  22),),),
            SizedBox(height: 50,),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                    padding: EdgeInsets.symmetric(vertical: 30 , horizontal: 0),
                      width: 130,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),border: Border.all(width: 2,color: Color(0xFFE5E5E5)),),
                      child: Column(children: [
                        Icon(Icons.production_quantity_limits , size: 34,color : Color(0XFF63BDCC)),
                        Text("Products",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color: Colors.black),)
                      ]),
                    ),
                    SizedBox(width: 0,),
                    Container(
                      width: 130,
                      padding: EdgeInsets.symmetric(vertical: 30 , horizontal: 0),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),border: Border.all(width: 2,color: Color(0xFFE5E5E5)),),
                      child: Column(children: [
                        Icon(Icons.receipt , size: 34,color: Color(0XFF63BDCC),),
                        Text("Recips",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color: Colors.black),)
                      ]),
                    )
                  ],
                ),
                SizedBox(height : 35),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130,
                      padding: EdgeInsets.symmetric(vertical: 30 , horizontal: 0),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),border: Border.all(width: 2,color: Color(0xFFE5E5E5)),),
                      child: Column(children: [
                        Icon(Icons.list , size: 34,color : Color(0XFF63BDCC),),
                        Text("Needs",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color: Colors.black),)
                      ]),
                    ),
                    SizedBox(width: 0,),
                    Container(
                      width: 130,
                      padding: EdgeInsets.symmetric(vertical: 30 , horizontal: 0),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),border: Border.all(width: 2,color: Color(0xFFE5E5E5)),),
                      child: Column(children: [
                        Icon(Icons.science , size: 34,color : Color(0XFF63BDCC)),
                        Text("Statistics",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color: Colors.black),)
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