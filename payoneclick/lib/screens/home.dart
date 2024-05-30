import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payoneclick/Api_Services/Api_models/Login_Model.dart';
import 'package:payoneclick/screens/AirtelScreen.dart';
import 'package:payoneclick/screens/JioScreen.dart';
import 'package:payoneclick/screens/Loginpage.dart';

class home extends StatefulWidget {
  final String? WalletBalance;
  const home({super.key, this.WalletBalance});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  LoginModel loginModel = LoginModel();

  @override
  Widget build(BuildContext context) {
    bool showStateTextField = true;
    var dropdownValue;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Perform logout actions here if needed
            // Navigate back to the login screen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Loginpage()),
                  (Route<dynamic> route) => false,
            );
          },
        ),
        title: Center(
          child: Row(
              children:[
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
                      color: Colors.black, // Set the color of the border
                      width: 2, // Set the width of the border
                    ),// Set the background color of the container
                  ),
                  child: Center(
                    child: Icon(
                      Icons.question_mark, // Specify the icon you want to display
                      color: Colors.blue[300], // Set the color of the icon
                      size: 25, // Adjust the size of the icon
                    ),
                  ),
                )




              ]
          ),
        ),
      ),
      // drawer:
      // Drawer(
      //   backgroundColor: Colors.purple[50],
      //   elevation: 7,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       Container(
      //         width: double.infinity, // Set the width to cover the entire drawer width
      //         height: 90.0, // Set your desired height here
      //         margin: EdgeInsets.only(top: 30,left: 10,right: 10,),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15),
      //           color: Colors.white,
      //         ),
      //         child: CircleAvatar(
      //           backgroundColor: Colors.white,
      //           child: Image.asset("image/logo.png",
      //             height: 60,
      //             width: 60,
      //
      //
      //           ),
      //         ),
      //       ),
      //       Container(
      //         width: double.infinity, // Set the width to cover the entire drawer width
      //         height: 90.0, // Set your desired height here
      //         margin: EdgeInsets.only(top: 5,left: 10,right: 10,),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15),
      //           color: Colors.white,
      //         ),
      //         child:Column(
      //           children: [
      //             Text(
      //               "Fahim hussain",
      //               style: TextStyle(
      //                   fontSize: 15,fontWeight: FontWeight.bold
      //               ),
      //             ),
      //             Row(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 45,top: 2),
      //                   child: Text(
      //                     "User ID",
      //                     style: TextStyle(
      //                         fontSize: 14,fontWeight: FontWeight.w600,color: Colors.red
      //                     ),
      //                   ),
      //                 ),
      //                 Spacer(),
      //                 Padding(
      //                   padding: const EdgeInsets.only(right: 45,top: 2),
      //                   child: Text(
      //                     "Number",
      //                     style: TextStyle(
      //                         fontSize: 14,fontWeight: FontWeight.w600,color: Colors.red
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //
      //             Row(
      //               children: [
      //                 Container(
      //                   // alignment: Alignment.topLeft,
      //                   margin: EdgeInsets.only(left: 15,top: 2),
      //                   height: 30,
      //                   width: 100,
      //                   decoration: BoxDecoration(
      //                     color: Colors.indigo[900],
      //                     borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
      //                   ),
      //
      //
      //                   child: Center(
      //                     child: Text(
      //                       "132342391015",
      //                       style: TextStyle(
      //                           fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Spacer(),
      //                 Container(
      //                   // alignment: Alignment.topRight,
      //                   margin:  EdgeInsets.only(top: 2,right: 15),
      //                   height: 30,
      //                   width: 100,
      //                   decoration: BoxDecoration(
      //                     color: Colors.indigo[900],
      //                     borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
      //                   ),
      //
      //
      //                   child: Center(
      //                     child: Text(
      //                       "132342391015",
      //                       style: TextStyle(
      //                           fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //
      //           ],
      //         ),
      //       ),
      //       Container(
      //           width: double.infinity, // Set the width to cover the entire drawer width
      //           height: 50.0, // Set your desired height here
      //           margin: EdgeInsets.only(top: 5,left: 10,right: 10,),
      //           //color: Colors.lightGreenAccent[700],
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(9),
      //             color: Colors.lightGreenAccent[700],
      //           ),
      //
      //           child:Center(child: Text(
      //             "Share Application",style: TextStyle(fontSize: 30,),))
      //       ),
      //       Container(
      //         width: double.infinity, // Set the width to cover the entire drawer width
      //         height:400, // Set your desired height here
      //         margin: EdgeInsets.only(top: 5,left: 10,right: 10,),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(9),
      //           color: Colors.white,
      //         ),
      //         child:Column(
      //           children: [
      //
      //             ListTile(
      //               title: Text('Profile'),
      //               leading: Icon(Icons.person),
      //               onTap: () {
      //                 // Add navigation logic here for profile
      //               },
      //             ),
      //             ListTile(
      //               title: Text('Home'),
      //               leading: Icon(Icons.home_filled),
      //               onTap: () {
      //                 // Add navigation logic here for profile
      //               },
      //             ),
      //             ListTile(
      //               title: Text('Setting'),
      //               leading: Icon(Icons.settings),
      //               onTap: () {
      //                 // Add navigation logic here for profile
      //               },
      //             ),
      //             ListTile(
      //               title: Text('Setting'),
      //               leading: Icon(Icons.settings),
      //               onTap: () {
      //                 // Add navigation logic here for profile
      //               },
      //             ),
      //             ListTile(
      //               title: Text('Setting'),
      //               leading: Icon(Icons.settings),
      //               onTap: () {
      //                 // Add navigation logic here for profile
      //               },
      //             ),
      //
      //
      //           ],
      //         ),
      //
      //       ),
      //
      //       // DrawerHeader(
      //       //   decoration: BoxDecoration(
      //       //     color: Colors.green,
      //       //   ),
      //       //   child: Text(
      //       //     'Additional Info',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 20,
      //       //     ),
      //       //   ),
      //       // ),
      //
      //       Container(
      //         margin: EdgeInsets.only(left: 15,right: 15),
      //         child: ElevatedButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           child: Text('Log Out',style: TextStyle(fontSize: 25),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(2.0),
      //             ),
      //             foregroundColor: Colors.white,
      //             backgroundColor: Colors.red,
      //
      //           ),
      //         ),
      //       ),
      //       Center(
      //           child: Text("Verion: 1.4.2",style: TextStyle(fontSize: 25,),)
      //
      //       ),
      //
      //
      //
      //     ],
      //
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //this is hello text
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15,top: 15),
              height: 30,
              //color: Colors.blue[300],
              child: Text("Hello Welcome To Payonclick"),

            ),
            Row(
              children: [
                Container(
                  height: 202,
                  width: 295,
                  //color: Colors.purple[300],
                  child: Image.asset(
                    // "image/payment.png",
                    "image/Maskgroup.png",
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),

                ),
                Container(
                  height: 202,
                  width: 60,
                  // color: Colors.deepPurple[300],
                  child:  Column(
                    children: [
                      Container(
                        //height: 300,

                        margin: EdgeInsets.only(top: 10,left: 5),
                       // color: Colors.indigo[100],
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 30),

                           // color: Colors.amber,
                            child: Column(
                                children:[
                                  Stack(
                                      children: [
                                        Image.asset("image/Ellipse.png"),
                                        Positioned(top: 0,left: 0,right: 0,bottom: 2,

                                          child: Center(
                                            child: Image.asset("image/wallet.png",height: 25,width: 25,),
                                          ),
                                        ),
                                      ]),//  image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("Add Money", style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Stack(
                                      children: [
                                        Image.asset("image/Ellipse.png"),
                                        Positioned(top: 0,left: 0,right: 0,bottom: 2,

                                          child: Center(
                                            child: Image.asset("image/bank-transfer.png",height: 25,width: 25,),
                                          ),
                                        ),
                                      ]),// image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5,top: 0),
                                    child: Text("Transfer Money", style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),




                    ],
                  ),

                ),

              ],
            ),
            SizedBox(height: 1,),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15,top: 15),
              height: 20,
              //color: Colors.blue[300],
              child: Text("RECHARGE",style: TextStyle(fontWeight: FontWeight.bold),),

            ),

            Container(
              height: 95,
              margin: EdgeInsets.only(top: 5,left: 15,right: 15),
              // color: Colors.deepPurple[300],
              child:   Container(
                margin: EdgeInsets.only(top: 5,),
                //  color: Colors.amber,
                // height: 150, // Adjust the height of the cards
                child: Row(
                  children: [
                    Container(
                      //height: 300,
                      margin: EdgeInsets.only(top: 10,left: 5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(

                          //color: Colors.amber,
                          child: Column(
                              children:[
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                        JioScreen(
                                          showStateTextField: true,
                                          // WalletBalance:loginModel.data!.walletBalance,
                                          WalletBalance: widget.WalletBalance,
                                        ),),

                                    );
                                    setState(() {
                                      showStateTextField = true; // Hide the state text field
                                    });
                                  },
                                  child: Image.asset("image/mobileRecharge.png",
                                    height: 50,width: 50,
                                  ),
                                ),//  image change
                                SizedBox(height: 1,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0,top: 5),
                                  child: Text("Mobile Recharge", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      //height: 300,
                      // margin: EdgeInsets.only(top: 10,left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 10,left: 20),

                          //color: Colors.amber,
                          child: Column(
                              children:[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> JioScreen(showStateTextField: false,WalletBalance: widget.WalletBalance,)));
                                    setState(() {
                                      showStateTextField = false; // Show the state text field
                                    });

                                  },
                                  child: Image.asset("image/satellitedish.png",
                                    height: 50,width: 50,
                                  ),
                                ),
                                SizedBox(height: 1,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0,top: 5),
                                  child: Text("Dth Recharge", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      //height: 300,
                      //margin: EdgeInsets.only(top: 10,left: 15),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 10,left: 15),

                          //color: Colors.amber,
                          child: Column(
                              children:[
                                Image.asset("image/mobile-app.png",
                                  height: 50,width: 50,
                                ),
                                SizedBox(height: 1,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0,top: 5),
                                  child: Text("Postpaid Recharge", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                              ]),
                        ),
                      ),
                    ),


                  ],
                ),
              ),


            ),

            SizedBox(height: 1,),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15,top: 15),
              height: 20,
              // color: Colors.blue[300],
              child: Text("BILLS PAYMENTS",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            Container(
              height: 290,
              // color: Colors.grey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/bulb.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("Electricity", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        //height: 300,
                        // margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 15,left: 60),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/gas-tank.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("LPG Gass", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        //height: 300,
                        //margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 45),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/transfer.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("Loan Repayment", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/umbralla.png",height: 50,width: 50,),//  image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,left: 0,),
                                    child: Text("Insurance", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        //height: 300,
                        // margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 60),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/satellite-dish.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text("Credit Card", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        //height: 300,
                        //margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 60),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/toll.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,right: 25),
                                    child: Text("Fastag", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/tab.png",height: 50,width: 50,),//  image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("Water", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //HERE IS THE COPY PAST


            SizedBox(height: 1,),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15,top: 15),
              height: 20,
              // color: Colors.blue[300],
              child: Text("BANKING",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            Container(
              height: 200,
              //color: Colors.grey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 15,left: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            //     margin: EdgeInsets.only(),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/AEPS.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("AEPS", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        //height: 300,
                        // margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 60),


                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/MATAM.png",height:50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("MATM", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        //height: 300,
                        //margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 60),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/PAYOUT.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("PAYOUT", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/moneyTransfer.png",height: 50,width: 50,),//  image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("Money Transfer", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        //height: 300,
                        // margin: EdgeInsets.only(top: 10,left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 40),

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/CMS.png",height: 50,width: 50,),
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("CMS", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 1,),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15,top: 15),
              height: 20,
              // color: Colors.blue[300],
              child: Text("PAN CARS",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            Container(
              height: 150,
              //color: Colors.grey,
              child: Column(
                children: [

                  Row(
                    children: [
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(

                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/NSDL.png",height: 50,width: 50,),//  image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("NSDL", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        //height: 300,
                        margin: EdgeInsets.only(top: 10,left: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 10,left: 60),


                            //color: Colors.amber,
                            child: Column(
                                children:[
                                  Image.asset("image/UTI.png",height: 50,width: 50,),//  image change
                                  SizedBox(height: 1,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0,top: 5),
                                    child: Text("UTI", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//here is the card

// Widget _buildCard(String imagePath, String locationName,
//     {double? width, double? height}) {
//   return Card(
//     color: Colors.white,
//     child: Column(
//       children: [
//         Image.asset(
//           imagePath,
//           width: width ?? 90, // Adjust the width of the image
//           height: height ?? 46, // Adjust the height of the image
//          // fit: BoxFit.cover,
//         ),
//         SizedBox(height: 15),
//         Text(
//           locationName,
//           style: TextStyle(
//             fontSize: 9,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     ),
//   );
// }

