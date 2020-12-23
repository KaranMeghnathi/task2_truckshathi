import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_truckshathi/Screens/Home.dart';

class Splash extends StatefulWidget{
  @override
  SplashState createState()=> SplashState();
}

class SplashState extends State<Splash>{
  @override


  Void initState(){
    super.initState();
    Timer(Duration(seconds: 2),() {


      Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage()),); // HomePage());

    });
  }
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        child: Image.asset("assets/index.jpg",alignment: Alignment.center,fit: BoxFit.contain,),
      ),
    );
  }
}