import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hausa_quiz/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text(
          "HausaQuiz\nDomin Raya Al-adun mu!",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontFamily: "Westey",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}