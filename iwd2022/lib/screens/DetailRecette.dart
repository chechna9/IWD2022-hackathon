import "package:flutter/material.dart";
class DetailRecette extends StatefulWidget {
  const DetailRecette({ Key? key }) : super(key: key);

  @override
  State<DetailRecette> createState() => _DetailRecetteState();
}

class _DetailRecetteState extends State<DetailRecette> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image(image: AssetImage("assets/recette.png"),height: 250,width: 900,fit: BoxFit.cover,),
        SizedBox(height: 10,),
        Text('Simple Amatriciana',style: TextStyle(color: Color(0XFFC40552),fontWeight: FontWeight.bold,fontSize: 26),),
        Text('',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500 , color: Color.fromARGB(255, 133, 130, 130)),)

      ]),
      
    );
  }
}