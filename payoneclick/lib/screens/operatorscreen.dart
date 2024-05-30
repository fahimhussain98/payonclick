import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class operatorscreen extends StatefulWidget {
  const operatorscreen({super.key});

  @override
  State<operatorscreen> createState() => _operatorscreenState();
}

class _operatorscreenState extends State<operatorscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(), //
            Image.asset(
              'image/icon2.png',
              width: 200,
            ),
          ],
        ),
      ),

      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 15), // Add space between AppBar and Drawer
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Add navigation logic here for profile
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                // Add navigation logic here for login
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Add navigation logic here for about
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          //stack background image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'image/Maskgroup1.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 5,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 185),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // background
                      foregroundColor: Colors.black,
                      elevation: 4,
                    ),
                    onPressed: () {},
                    child: Text(
                      'SELECTED OPERATOR',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 60,),
              Container(
                height: 250,
                //color: Colors.grey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top: 5, left: 11),

                          child: Image.asset("image/Group8688.png"),
                        ),
                        SizedBox(width: 11,),
                        Container(
                          child: Image.asset("image/Group8689.png"),
                        ),
                        SizedBox(width: 11,),
                        Container(
                          child: Image.asset("image/Group8690.png"),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top: 5, left: 77),
                          child: Image.asset("image/Group8693.png"),
                        ),
                        SizedBox(width: 11,),
                        Container(
                          child: Image.asset("image/Group8695.png"),
                        ),

                      ],


                    )

                  ],
                ),
              ),



            ],
          ),

        ],
      ),
      );


  }
}