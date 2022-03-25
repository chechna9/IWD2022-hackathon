import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:iwd2022/classes/recette.dart';

class showRecettes extends StatefulWidget {
  const showRecettes({Key? key}) : super(key: key);

  @override
  _showRecettesState createState() => _showRecettesState();
}

class _showRecettesState extends State<showRecettes> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            child: Container(
              padding: EdgeInsets.only(left: 7),
              child: Image.asset(
                'assets/home.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 7),
              child: Image.asset(
                'assets/LG-LOGO.png',
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ProductDataModel>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Image(
                                image: NetworkImage(
                                    items[index].imageURL.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      items[index].name.toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                        items[index].ingredient.toString()),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }

  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString("./files/recette.json");
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}
