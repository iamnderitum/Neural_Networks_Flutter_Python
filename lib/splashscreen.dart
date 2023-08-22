import 'dart:async';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}
class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        ()=>Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:(context) => SecondScreen(),
            ),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Python Flutter")),
      body: Center(
        child:Text("Human Generator App",textScaleFactor: 2,)
      ),
    );
  }
}