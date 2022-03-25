import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestNeeds(),
    );
  }
}

class TestNeeds extends StatefulWidget {
  const TestNeeds({Key? key}) : super(key: key);

  @override
  State<TestNeeds> createState() => _TestNeedsState();
}

class _TestNeedsState extends State<TestNeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Slidable(
            child: ListTile(
              leading: Icon(Icons.task_alt),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
