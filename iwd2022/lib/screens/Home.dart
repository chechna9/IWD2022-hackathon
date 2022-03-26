import "package:flutter/material.dart";
import 'package:iwd2022/constants.dart';
import 'package:iwd2022/screens/Drawer.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_sharp,
              color: Color.fromARGB(255, 66, 61, 61),
              size: 35,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/welcomeToLG.png',
                width: MediaQuery.of(context).size.width * 0.7,
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(
                height: 30,
              ),
              HomeRoutes(),
            ],
          ),
          Image.asset(
            'assets/footer.png',
            width: MediaQuery.of(context).size.width * 0.3,
          ),
        ],
      ),
    );
  }
}

class HomeRoutes extends StatelessWidget {
  const HomeRoutes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LinkHome(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/menu');
                },
                icon: const Icon(
                  Icons.production_quantity_limits,
                  size: 34,
                  color: Colors.white,
                ),
                title: "Ingredients"),
            SizedBox(
              width: 0,
            ),
            LinkHome(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/showRecette');
                },
                icon: const Icon(
                  Icons.receipt,
                  size: 34,
                  color: Colors.white,
                ),
                title: "Recepies"),
          ],
        ),
        SizedBox(height: 35),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LinkHome(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/needs');
                },
                icon: const Icon(
                  Icons.list,
                  size: 34,
                  color: Colors.white,
                ),
                title: "Needs"),
            SizedBox(
              width: 0,
            ),
            LinkHome(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/statistics");
                },
                icon: const Icon(
                  Icons.stacked_bar_chart_sharp,
                  size: 34,
                  color: Colors.white,
                ),
                title: "Statistics"),
          ],
        )
      ],
    );
  }
}

class LinkHome extends StatelessWidget {
  final onPressed;
  final String title;
  final Widget icon;
  const LinkHome({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        elevation: 10,
        shadowColor: Color.fromARGB(255, 54, 182, 221),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        backgroundColor: myBlue,
      ),
      child: Container(
        width: 150,
        child: Column(
          children: [
            icon,
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
