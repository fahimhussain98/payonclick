import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Drawer(
        backgroundColor: Colors.white,
        elevation: 5,
        child: Stack(
            children:[ ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[

                Container(
                  //width: double.infinity, // Set the width to cover the entire drawer width
                  height: 80.0, // Set your desired height here
                  margin: EdgeInsets.only(top: 30,left: 10,right: 10,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF046DB5),
                  ),
                  child:Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name:   Fahim hussain",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        Text("Mobile:   9643159918",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                      ],
                    ),
                  ),
                ),

                //circular button
                Stack(
                    children:[ Container(

                      height: 560,width: double.infinity,



                    //  color: Colors.teal,
                      margin: EdgeInsets.only(top: 10,),
                      child: Stack(
                          children:[
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Image.asset("image/drawerImage.png",
                                width: 250,
                                //height: 540,
                              ),
                            ),
                            Column(
                              children: [
                                Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 10),
                                        child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                      ),
                                      Row(children:[
                                        Padding(padding: const EdgeInsets.only(left: 10,top: 10),
                                          child: Image.asset("image/homeIcon.png",height: 40,width: 40,),
                                        ),
                                        Padding(padding: const EdgeInsets.only(left: 10,top: 10,),
                                          child: Text("Home",style: TextStyle(fontSize: 16),),
                                        )
                                      ]),

                                    ]),SizedBox(height: 0,),
                                Stack(children:[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 105),
                                    child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                  ),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 115,top: 5),
                                      child: Image.asset("image/profileIcon.png",height: 30,width: 30,),
                                    )],),
                                  Padding(padding: const EdgeInsets.only(left: 160,top: 10),
                                    child: Text("Profile",style: TextStyle(fontSize: 16),),
                                  )

                                ]),
                                SizedBox(height: 4,),
                                Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 185,top: 30),
                                        child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 195,top: 40),
                                        child: Image.asset("image/ChangePassword.png",height: 29,width: 29,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 235,top: 12),
                                        child: Text("Change Password",style: TextStyle(fontSize: 13),),
                                      )


                                    ]),
                                SizedBox(height: 4,),
                                Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 212,top: 50),
                                        child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 220,top: 60),
                                        child: Image.asset("image/reportsIcon.png",height: 30,width: 30,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 245,top: 35),
                                        child: Text("Reports",style: TextStyle(fontSize: 13),),
                                      )


                                    ]),
                                SizedBox(height: 4,),
                                Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 180,top: 70),
                                        child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 190,top: 80),
                                        child: Image.asset("image/Term&conditionIcon.png",height: 30,width: 30,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 235,top: 60),
                                        child: Text("Term & Condition",style: TextStyle(fontSize: 13),),
                                      )


                                    ]),

                                Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 65,top:25),
                                        child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 75,top: 35),
                                        child: Image.asset("image/reportsIcon.png",height: 30,width: 30,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 110,top:45),
                                        child: Text("  Refer & Earn",style: TextStyle(fontSize: 13),),
                                      )


                                    ]),
                                Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0,top:5,right: 240,),
                                        child: Image.asset("image/CircleIcon.png",height: 50,width: 50,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,top: 15),
                                        child: Image.asset("image/logoutIcon.png",height: 30,width: 30,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 69,top: 25,),
                                        child: Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      )


                                    ]),



                              ],
                            )


                          ]
                      ),
                    ),]
                ),
                SizedBox(height: 0,),
                //payonclick icon at bottom
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                   // color: Colors.deepPurpleAccent,
                    // margin: EdgeInsets.all(5),

                    height: 60,
                    // color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("image/loginicon.png",

                      ),
                    ),
                  ),
                )








              ],

            ),]
        ),
      ),

    );
  }
}