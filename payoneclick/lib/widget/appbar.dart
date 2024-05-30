// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Myappbar extends StatefulWidget {
//   const Myappbar({super.key});
//
//   @override
//   State<Myappbar> createState() => _Myappbar();
// }
//
// class _Myappbar extends State<Myappbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//       title:
//       Center(
//         child: Row(
//             children:[
//               Image.asset(
//                 'image/icon2.png',
//                 width: 200,
//               ),
//               Spacer(),
//               Container(
//                 width: 40, // Adjust the width of the container
//                 height: 40, // Adjust the height of the container
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle, // This makes the container circular
//                   color: Colors.white,
//                   border: Border.all(
//                     color: Colors.black, // Set the color of the border
//                     width: 2, // Set the width of the border
//                   ),// Set the background color of the container
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.question_mark, // Specify the icon you want to display
//                     color: Colors.blue[300], // Set the color of the icon
//                     size: 25, // Adjust the size of the icon
//                   ),
//                 ),
//               )
//
//
//
//
//             ]
//         ),
//       ),
//     ),
//
//
//
//       body: Container(
//
//       ),
//
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



    );
      


  }
}
//appbar and drawer not uses yet