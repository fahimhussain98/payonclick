import 'package:flutter/material.dart';
import 'package:payoneclick/screens/Reports.dart';
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
     // home: Loginpage(),
     //   home:home()
      // home: operatorscreen(),
      //home: operatorscreen2(),
     // home:  NavBar(),
      home: splashScreen(), //this is ready page.
     // home: AirtelScreen(),
     // home: JioScreen(),
      //home: Testingpage(),
     // home: walletScreen(),
      //home: ProfilleScreen(),
      //home: SuppordScreen(),
      //home:ReportScreen() // this is checking for pull the request in my C laptop by kalpesh
    );
  }
}
