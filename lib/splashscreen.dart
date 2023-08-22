import 'dart:async';
import 'package:flutter/material.dart';
import 'package:human_generator_app/home.dart';

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
            builder:(context) => Home(),
            ),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
                  Color.fromRGBO(138, 35, 135, 1.0),
                  Color.fromRGBO(255, 64, 87, 1.0),
                  Color.fromRGBO(242, 113, 33, 1.0)
                ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text(
              "Human Generator App ...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )
          ],
        )
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