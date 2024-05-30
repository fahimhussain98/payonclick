import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payoneclick/widget/appbar.dart';

class AirtelScreen extends StatefulWidget {
  const AirtelScreen({super.key});

  @override
  State<AirtelScreen> createState() => _AirtelScreenState();
}

class _AirtelScreenState extends State<AirtelScreen> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topRight,
          child: Image.asset("image/icon2.png",
          width: 150,
          ),
        ),

      ),
      drawer:    Drawer(
      backgroundColor: Colors.purple[50],
      elevation: 7,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: double.infinity, // Set the width to cover the entire drawer width
            height: 90.0, // Set your desired height here
            margin: EdgeInsets.only(top: 30,left: 10,right: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("image/logo.png",
                height: 60,
                width: 60,


              ),
            ),
          ),
          Container(
            width: double.infinity, // Set the width to cover the entire drawer width
            height: 90.0, // Set your desired height here
            margin: EdgeInsets.only(top: 5,left: 10,right: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child:Column(
              children: [
                Text(
                  "Fahim hussain",
                  style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45,top: 2),
                      child: Text(
                        "User ID",
                        style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w600,color: Colors.red
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 45,top: 2),
                      child: Text(
                        "Number",
                        style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w600,color: Colors.red
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      // alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 15,top: 2),
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                      ),


                      child: Center(
                        child: Text(
                          "132342391015",
                          style: TextStyle(
                              fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      // alignment: Alignment.topRight,
                      margin:  EdgeInsets.only(top: 2,right: 15),
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                      ),


                      child: Center(
                        child: Text(
                          "132342391015",
                          style: TextStyle(
                              fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
              width: double.infinity, // Set the width to cover the entire drawer width
              height: 50.0, // Set your desired height here
              margin: EdgeInsets.only(top: 5,left: 10,right: 10,),
              //color: Colors.lightGreenAccent[700],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.lightGreenAccent[700],
              ),

              child:Center(child: Text(
                "Share Application",style: TextStyle(fontSize: 30,),))
          ),
          Container(
            width: double.infinity, // Set the width to cover the entire drawer width
            height:400, // Set your desired height here
            margin: EdgeInsets.only(top: 5,left: 10,right: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.white,
            ),
            child:Column(
              children: [

                ListTile(
                  title: Text('Profile'),
                  leading: Icon(Icons.person),
                  onTap: () {
                    // Add navigation logic here for profile
                  },
                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home_filled),
                  onTap: () {
                    // Add navigation logic here for profile
                  },
                ),
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    // Add navigation logic here for profile
                  },
                ),
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    // Add navigation logic here for profile
                  },
                ),
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    // Add navigation logic here for profile
                  },
                ),


              ],
            ),

          ),

          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //   ),
          //   child: Text(
          //     'Additional Info',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 20,
          //     ),
          //   ),
          // ),

          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Log Out',style: TextStyle(fontSize: 25),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,

              ),
            ),
          ),
          Center(
              child: Text("Verion: 1.4.2",style: TextStyle(fontSize: 25,),)

          ),



        ],

      ),
    ),
      body: Stack(
      children: [
        Image.asset("image/airtelBack.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(

            child:
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 100),
              width: 360,
              height: 560,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 1, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 5), // Offset in x and y directions
                  ),
                ],
                borderRadius: BorderRadius.circular(10), // Optional: for rounded corners
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0), // Optional: add padding inside the container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Centers the column's content vertically
                  children: <Widget>[

                    // TextField(
                    //   decoration: InputDecoration(
                    //     //  labelText: 'Subscribe ID 2',
                    //     //   hintText: '',
                    //     border: OutlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.grey), // Set the border color to grey
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.grey), // Set the border color to grey when not focused
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.grey), // Set the border color to grey when focused
                    //     ),
                    //
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
                      child: Text("DTH RECHARGE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF046DB5),
                      )),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Subscribe ID",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black,)),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 55, // Specify the desired height here
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        //this is Droupdown
                        Text("Seclet Operator"),
                        SizedBox(height: 10,),
                        Container(
                          //  padding: EdgeInsets.only(left: 5,right: 5),
                          decoration:BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            isExpanded: true,
                            underline: SizedBox(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            // underline: Container(
                            //   height: 1,
                            //   color: Colors.grey, // Set the underline color to grey
                            // ),
                            dropdownColor: Colors.grey[50], // Optional: Set the dropdown background color to match the container background color

                          ),
                        ),
                        SizedBox(height: 10,),

                        SizedBox(height: 10,),
                        Text("Amount "),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 55, // Specify the desired height here
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                      ],
                    ),


                    SizedBox(height: 10,),
                    //icon + text
                    Container(
                      height: 30,
                     // color: Colors.purple.shade50,
                      child: Row(
                        children: [
                          Stack(
                              children:[
                            Image.asset("image/ACE2.png"),
                            Center(

                              child: Padding(
                                padding: const EdgeInsets.only(left: 8,top: 4,bottom: 8,),
                                child: Icon(Icons.search,size: 18,),
                              ),
                            ),

                          ]),
                          Spacer(),
                          Text("My plains ",style: TextStyle(fontSize: 13,color: Colors.indigo),),
                          Image.asset("image/ACE.png"),

                        ],
                      )
                    ),
                    SizedBox(height: 10,),
                    //button
                    Container(
                      height: 45,
                      width: 400,
                      //margin: EdgeInsets.only(left: 5,right: 5, ),
                      child: ElevatedButton(
                        onPressed: () {
                         // Navigator.pop(context);
                        },
                        child: Text('PROCEED TO PAY',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF0361A2),

                        ),
                      ),
                    )

                  ],

                ),
              ),
            )

          // CircleAvatar(
          //   child: Image.asset("assets/Airtel.png"),
          //   radius: 20,
          // )
          //


        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 90),
            child: CircleAvatar(
              backgroundColor: Colors.grey[50],
              child: Image.asset("image/Airtel.png",),
              radius: 50,
            ),

          ),
        ),
        // Column(
        //   children: [
        //     TextField(
        //       decoration: InputDecoration(
        //         labelText: 'Subscribe ID', // Label that appears above the text field when focused
        //         hintText: 'Enter your subscribe ID', // Hint text that appears inside the text field when empty
        //         border: OutlineInputBorder(), // Optional: Adds a border around the text field
        //       ),
        //
        //     )
        //   ],
        // )
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.only(top: 0,),

            height: 110,
            width: 120,
         //   color: Colors.indigoAccent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Wallet Balance",style: TextStyle(fontSize: 14,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0,top: 5),
                  child: Text('\u20B9'"200", style: TextStyle(fontSize: 26, color: Colors.black)),
                ),


              ],
            ),
          ),
        )



      ],


    ),

      // body: Stack(
      //   children: [
      //     Image.asset("image/airtelBack.png",
      //       width: double.infinity,
      //       height: double.infinity,
      //       fit: BoxFit.cover,
      //     ),
      //     Center(
      //
      //         child:
      //         Container(
      //           margin: EdgeInsets.only(left: 25, right: 25, top: 100),
      //           width: 368,
      //           height: 550,
      //           decoration: BoxDecoration(
      //             color: Colors.grey[50],
      //             boxShadow: [
      //               BoxShadow(
      //                 color: Colors.black.withOpacity(0.5), // Shadow color
      //                 spreadRadius: 1, // Spread radius
      //                 blurRadius: 5, // Blur radius
      //                 offset: Offset(0, 5), // Offset in x and y directions
      //               ),
      //             ],
      //             borderRadius: BorderRadius.circular(10), // Optional: for rounded corners
      //           ),
      //           child: Padding(
      //             padding: EdgeInsets.all(20.0), // Optional: add padding inside the container
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.start, // Centers the column's content vertically
      //               children: <Widget>[
      //
      //                 // TextField(
      //                 //   decoration: InputDecoration(
      //                 //     //  labelText: 'Subscribe ID 2',
      //                 //     //   hintText: '',
      //                 //     border: OutlineInputBorder(
      //                 //       borderSide: BorderSide(color: Colors.grey), // Set the border color to grey
      //                 //     ),
      //                 //     enabledBorder: OutlineInputBorder(
      //                 //       borderSide: BorderSide(color: Colors.grey), // Set the border color to grey when not focused
      //                 //     ),
      //                 //     focusedBorder: OutlineInputBorder(
      //                 //       borderSide: BorderSide(color: Colors.grey), // Set the border color to grey when focused
      //                 //     ),
      //                 //
      //                 //   ),
      //                 // ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
      //                   child: Text("DTH RECHARGE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF046DB5),
      //                   )),
      //                 ),
      //                 SizedBox(height: 10),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: <Widget>[
      //                     Text("Subscribe ID",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black,)),
      //                     SizedBox(height: 10,),
      //                     SizedBox(
      //                       height: 55, // Specify the desired height here
      //                       child: TextField(
      //                         decoration: InputDecoration(
      //                           border: OutlineInputBorder(),
      //                         ),
      //                       ),
      //                     ),
      //                     SizedBox(height: 10,),
      //                     //this is Droupdown
      //                     Text("Seclet Operator"),
      //                     SizedBox(height: 10,),
      //                     Container(
      //                       //  padding: EdgeInsets.only(left: 5,right: 5),
      //                       decoration:BoxDecoration(
      //                           border: Border.all(color: Colors.grey,width: 1)
      //                       ),
      //                       child: DropdownButton<String>(
      //                         value: dropdownValue,
      //                         isExpanded: true,
      //                         underline: SizedBox(),
      //                         onChanged: (String? newValue) {
      //                           setState(() {
      //                             dropdownValue = newValue!;
      //                           });
      //                         },
      //                         items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
      //                             .map<DropdownMenuItem<String>>((String value) {
      //                           return DropdownMenuItem<String>(
      //                             value: value,
      //                             child: Text(value),
      //                           );
      //                         }).toList(),
      //                         // underline: Container(
      //                         //   height: 1,
      //                         //   color: Colors.grey, // Set the underline color to grey
      //                         // ),
      //                         dropdownColor: Colors.grey[50], // Optional: Set the dropdown background color to match the container background color
      //
      //                       ),
      //                     ),
      //                     SizedBox(height: 10,),
      //
      //                     SizedBox(height: 10,),
      //                     Text("Amount "),
      //                     SizedBox(height: 10,),
      //                     SizedBox(
      //                       height: 55, // Specify the desired height here
      //                       child: TextField(
      //                         decoration: InputDecoration(
      //                           border: OutlineInputBorder(),
      //                         ),
      //                       ),
      //                     ),
      //
      //                     SizedBox(height: 10,),
      //
      //                   ],
      //                 ),
      //
      //
      //                 SizedBox(height: 10,),
      //                 //icon + text
      //                 Container(
      //                   height: 30,
      //                  // color: Colors.purple.shade50,
      //                   child: Row(
      //                     children: [
      //                       Stack(
      //                           children:[
      //                         Image.asset("image/ACE2.png"),
      //                         Center(
      //
      //                           child: Padding(
      //                             padding: const EdgeInsets.only(left: 8,top: 4,bottom: 8,),
      //                             child: Icon(Icons.search,size: 18,),
      //                           ),
      //                         ),
      //
      //                       ]),
      //                       Spacer(),
      //                       Text("My plains ",style: TextStyle(fontSize: 13,color: Colors.indigo),),
      //                       Image.asset("image/ACE.png"),
      //
      //                     ],
      //                   )
      //                 ),
      //                 SizedBox(height: 10,),
      //                 //button
      //                 Container(
      //                   height: 45,
      //                   width: 400,
      //                   //margin: EdgeInsets.only(left: 5,right: 5, ),
      //                   child: ElevatedButton(
      //                     onPressed: () {
      //                      // Navigator.pop(context);
      //                     },
      //                     child: Text('PROCEED TO PAY',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
      //                     style: ElevatedButton.styleFrom(
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(12.0),
      //                       ),
      //                       foregroundColor: Colors.white,
      //                       backgroundColor: Color(0xFF0361A2),
      //
      //                     ),
      //                   ),
      //                 )
      //
      //               ],
      //
      //             ),
      //           ),
      //         )
      //
      //       // CircleAvatar(
      //       //   child: Image.asset("assets/Airtel.png"),
      //       //   radius: 20,
      //       // )
      //       //
      //
      //
      //     ),
      //     Align(
      //       alignment: Alignment.topCenter,
      //       child: Container(
      //         margin: EdgeInsets.only(top: 150),
      //         child: CircleAvatar(
      //           backgroundColor: Colors.grey[50],
      //           child: Image.asset("image/Airtel.png",),
      //           radius: 50,
      //         ),
      //
      //       ),
      //     ),
      //     // Column(
      //     //   children: [
      //     //     TextField(
      //     //       decoration: InputDecoration(
      //     //         labelText: 'Subscribe ID', // Label that appears above the text field when focused
      //     //         hintText: 'Enter your subscribe ID', // Hint text that appears inside the text field when empty
      //     //         border: OutlineInputBorder(), // Optional: Adds a border around the text field
      //     //       ),
      //     //
      //     //     )
      //     //   ],
      //     // )
      //     Align(
      //       alignment: Alignment.topCenter,
      //       child: Container(
      //         margin: EdgeInsets.only(top: 40,),
      //
      //         height: 110,
      //         width: 120,
      //      //   color: Colors.indigoAccent,
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 25),
      //               child: Text("Wallet Balance",style: TextStyle(fontSize: 14,),),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(left:0,top: 5),
      //               child: Text('\u20B9'"200", style: TextStyle(fontSize: 26, color: Colors.black)),
      //             ),
      //
      //
      //           ],
      //         ),
      //       ),
      //     )
      //
      //
      //
      //   ],
      //
      //
      // ),

    );
  }
}
