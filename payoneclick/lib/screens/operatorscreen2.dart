import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class operatorscreen2 extends StatefulWidget {
  const operatorscreen2({super.key});

  @override
  State<operatorscreen2> createState() => _operatorscreen2State();
}

class _operatorscreen2State extends State<operatorscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          height: 89,
                          width: 89,
                          margin:EdgeInsets.only(top: 5, left: 15,right: 10),

                          child: Image.asset("image/Group8706.png"),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 89,
                          width: 89,
                          child: Image.asset("image/Group8703.png"),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 89,
                          width: 89,
                          child: Image.asset("image/Group8704.png"),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Container(
                          height: 89,
                          width: 89,
                          margin:EdgeInsets.only(top: 5, left: 70),
                          child: Image.asset("image/Group8699.png"),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          height: 89,
                          width: 89,
                          child: Image.asset("image/Group8705.png"),
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
