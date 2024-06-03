import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payoneclick/Api_Services/Api_models/Login_Model.dart';
import 'package:payoneclick/screens/ProfileScreen.dart';
import 'package:payoneclick/screens/Reports.dart';
import 'package:payoneclick/screens/SuffordScreen.dart';
import 'package:payoneclick/screens/Wallet.dart';
import 'package:payoneclick/screens/home.dart';

class NavBar extends StatefulWidget {
 // final String? WalletBalance;
  final LoginModel loginModelData; // ye data  login-> bottomNavBar -> home -> jioScreen

  const NavBar({
    Key? key,
    required this.loginModelData,// ye data  login-> bottomNavBar -> home -> jioScreen
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _pageIndex = 0;
  LoginModel loginModel = LoginModel();



  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      home (),                    //(loginModelData: widget.loginModelData),// ye data  login-> bottomNavBar -> home -> jioScreen
      walletScreen(),
      ProfilleScreen(loginModelData: widget.loginModelData),
      ReportScreen(),
      SuppordScreen(),
    ];
    return Scaffold(
     // backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,

        color: Color(0xFF046DB5),
        height: 60,
        animationDuration: Duration(milliseconds: 30),
        items: [
          CurvedNavigationBarItem(
            child:  Icon(Icons.home,color: Colors.white,),
            label: 'Home', labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
            child:  Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
            label: 'Wallet', labelStyle: TextStyle(color: Colors.white)
          ),
          CurvedNavigationBarItem(
              child:  Icon(Icons.person_2_outlined,color: Colors.white,),
              label: 'Profile', labelStyle: TextStyle(color: Colors.white)
          ),

          CurvedNavigationBarItem(
            child:  Icon(Icons.file_present,color: Colors.white,),
            label: 'Reports',labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child:  Icon(Icons.headset_mic_rounded,color: Colors.white,),
            label: 'Support',labelStyle: TextStyle(color: Colors.white),
          ),
        ],
        index: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      body: _pages[_pageIndex],
    );
  }
}


class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favrite  page create here...', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Report page comming soon...', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}

class reports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}

class headphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('History page create here ....', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }



}
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('Profile page will be creating ....', style: TextStyle(color: Colors.black, fontSize: 24)),
    );
  }
}


