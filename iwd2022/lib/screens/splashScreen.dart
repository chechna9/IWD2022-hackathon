import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4))
        .then((value) => Navigator.pushReplacementNamed(context, '/home'));
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    final _curvedAnimation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInExpo,
      reverseCurve: Curves.easeInQuad, //easinOut
    );
    _animationController!.forward();
    _animation = Tween<double>(begin: 1, end: 1.2).animate(_curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController!.forward();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Transform.scale(
        scale: _animation!.value,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80),
          color: Colors.white,
          child: Image.asset(
            'assets/LG-LOGO.png',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController!.dispose();
    super.dispose();
  }
}
