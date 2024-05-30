import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payoneclick/screens/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    home(),
    FavoritePage(),
    SettingsPage(),
    headphone(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.indigo.shade600,
        height: 60,
        animationDuration: Duration(milliseconds: 300),
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
            child:  Icon(Icons.file_present,color: Colors.white,),
            label: 'Reports',labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child:  Icon(Icons.headset_mic_rounded,color: Colors.white,),
            label: 'History',labelStyle: TextStyle(color: Colors.white),
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
      child: Text('Wallet page create here...', style: TextStyle(color: Colors.black, fontSize: 24)),
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

