import 'package:flutter/material.dart';
import 'package:payoneclick/Api_Services/Api_models/Login_Model.dart';
import 'package:payoneclick/screens/Loginpage.dart';
import 'package:payoneclick/screens/testingPage.dart';







void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final loginModel = LoginModel(); // You should replace this with actual initialization


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
     // home:  NavBar(),
     // home: splashScreen(), //this is ready page.
     // home: AirtelScreen(),
     // home: JioScreen(loginModelData: loginModel ,showStateTextField: true,),

     // home: walletScreen(),
      //home: ProfilleScreen(),
      //home: SuppordScreen(),
      //home:ReportScreen(),
    //  home: Testingpage(showStateTextField: true,),
    );
  }
}
