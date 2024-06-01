import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payoneclick/navBar/BottomNav.dart';
import 'package:payoneclick/screens/Loginpage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {

    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          children:[
            Container(
              decoration: BoxDecoration(

              ),
              child: Center(
                child: Image.asset("image/SPLASHSCREEN.png",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

              ),
            ),
            Container(
                child: Center(child: CircularProgressIndicator())
            )
          ]
      ),
    );

  }

  Future<Timer>loadData()async {
    return new Timer(Duration(seconds: 5),onDoneLoading);
  }

  onDoneLoading() async{
   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (Context)=>Loginpage())); //let   //wtsAirtelScreen  ///NavBar()
  }




}

