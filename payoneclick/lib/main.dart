import 'package:flutter/material.dart';
import 'package:payoneclick/navBar/BottomNav.dart';

import 'package:payoneclick/screens/Loginpage.dart';
import 'package:payoneclick/screens/home.dart';
import 'package:payoneclick/screens/testingPage.dart';
import 'package:payoneclick/splashScreen/splashScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: HomePage(),
      home: Loginpage(),
     //   home:home()
      // home: operatorscreen(),
      //home: operatorscreen2(),
      //home:  NavBar(),
     // home: splashScreen(), //after add the splashScreen
     // home: AirtelScreen(),
     // home: JioScreen(),
      //home: Testingpage(),
    );
  }
}
