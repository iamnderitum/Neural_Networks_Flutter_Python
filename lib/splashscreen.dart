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
        Duration(seconds: 10),
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
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: MediaQuery.of(context).size.height/2),
            SizedBox(height: 16),
            CircularProgressIndicator(),
          ],
        ),
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