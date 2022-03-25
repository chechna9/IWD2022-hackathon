// ignore: file_names
import "package:flutter/material.dart";

class MyDrawer extends StatefulWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/pf1.jpg"),fit: BoxFit.cover) 
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Container(
                    width: 60,height: 60,
                    decoration: const BoxDecoration(borderRadius:  BorderRadius.all(Radius.circular(100)),
                    image: DecorationImage(image: AssetImage("assets/pf.jpg"),
                    ),
                    ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                 const Text("Chamsou berkane",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12
                  ),),
                  const SizedBox(
                      height: 2,
                    ),
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                   const Text("jC_berkane@esi.dz",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12
                  ),),
                   const Icon(Icons.arrow_drop_down,size: 12,color: Colors.white,)
                  ],),

                  const SizedBox(height: 10,)
                ],
              ),
            ),
          ListTile(
            title: const Text("Home",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.w600),),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: ()
            {},
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("profile",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.w600),),
            leading: IconButton(
              icon: Icon(Icons.account_box),
              onPressed: () {
              },
            ),
            onTap: ()
            {},
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("shopping",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.w600),),
            leading: IconButton(
              icon: const Icon(Icons.shopping_bag),
              onPressed: () {
              },
            ),
            onTap: ()
             {},
          )
        ],
      ) ,
    );
  }
}