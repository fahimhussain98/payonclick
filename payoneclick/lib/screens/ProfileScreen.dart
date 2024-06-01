import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payoneclick/Drawer/MyCustomDrawer.dart';

class ProfilleScreen extends StatefulWidget {
  const ProfilleScreen({super.key});

  @override
  State<ProfilleScreen> createState() => _ProfilleScreenState();
}

class _ProfilleScreenState extends State<ProfilleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Stack(
                children: [
                  Image.asset('image/circleForDrawer.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 7, top: 5),
                    child: Icon(Icons.sort, color: Colors.white, size: 25),
                  )
                ],
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Center(
          child: Row(
            children: [
              Image.asset(
                'image/icon2.png',
                width: 200,
              ),
              Spacer(),
              Container(
                width: 40, // Adjust the width of the container
                height: 40, // Adjust the height of the container
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // This makes the container circular
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.red, // Set the color of the border
                    width: 2, // Set the width of the border
                  ), // Set the background color of the container
                ),
                child: Center(
                  child: Icon(
                    Icons.question_mark, // Specify the icon you want to display
                    color: Colors.blue[300], // Set the color of the icon
                    size: 25, // Adjust the size of the icon
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: MyCustomDrawer(),
      body: Stack(
        children: [
          // This is the background image
          Image.asset(
            "image/ProfileWI.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Positioned(
              top: 15,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "PROFILE",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 // SizedBox(height: 65),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 25),
                    child: Text(
                      "User Type",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Retailer",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
            
                  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the Name",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
            
                  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "Contact No",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the Phone Number",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
            
                  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "Email ID",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the Email ID",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "Address",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter the State",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
            
            
            
            
            
            
                  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "Aadhar No.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Aadhar Number",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20),
                    child: Text(
                      "Pan No.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Pan Card Number",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0), // Adjust padding to decrease height
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
