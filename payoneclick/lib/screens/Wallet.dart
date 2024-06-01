import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payoneclick/Drawer/MyCustomDrawer.dart';

class walletScreen extends StatefulWidget {
  const walletScreen({super.key});

  @override
  State<walletScreen> createState() => _walletScreenState();
}

class _walletScreenState extends State<walletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:  Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Stack(children:[
                Image.asset('image/circleForDrawer.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 7,top: 5),
                  child: Icon(Icons.sort,color: Colors.white,size: 25,),
                )
              ]),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
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
      drawer: MyCustomDrawer(),
      body: Column(
        children: [
          Text("WALLET",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          Container(
            height: 80,
           // color: Colors.deepPurpleAccent,
            child:Row(
              children: [
                Container(
                  height: 70,width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                   child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 15),
                            child: Text("Main Wallet  "),
                          ),
                          Text("\$1120000.0"),
                        ],
                      ),
                      Image.asset("image/walletIconIn.png"),

                    ],
                  ),

                ),
                Spacer(),
                Container(
                  height: 70,width: 170,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 15),
                            child: Text("AEPS Wallet "),
                          ),
                          Text("\$11200000.0"),
                        ],
                      ),
                      Image.asset("image/walletIconIn.png"),

                    ],
                  ),
                )
              ],
            )
          ),
         // SizedBox(height: 5,),

          Stack(
            children: [
              Container(
                height: 400,
                width: 380,
                margin: EdgeInsets.only(left: 20,right: 20,top: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color:  Color(0xFF046DB5)
              ),
                //this is button the container
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 229,
                      margin: EdgeInsets.only(left: 15,right: 15,top: 170),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Text('FUND REQUEST ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                          foregroundColor: Colors.white,   //0361A2
                          backgroundColor: Color(0xff00A8DE)

                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      width: 229,
                      margin: EdgeInsets.only(left: 15,right: 15,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Text('ADD MONEY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            foregroundColor:  Color(0xff00A8DE),   //0361A2
                            backgroundColor: Colors.white

                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      width: 229,
                     // margin: EdgeInsets.only(left: 15,right: 15,top: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Text('WALLET TO WALLET',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            foregroundColor: Colors.white,   //0361A2
                            backgroundColor: Color(0xff00A8DE)

                        ),
                      ),
                    ),
                  ],
                ),
            ),
            //  SizedBox(height: 5,),

              //this is only large WI , on the Stack , don't apply chages on it
              Container(
                height: 240,
                margin: EdgeInsets.only(left: 15,right: 15),
               // color: Colors.amber,
                    child: Align(
                    alignment: Alignment.center,
                    child: Image.asset("image/WI.png",height: 230,)),
              ),
            ]
          )
        ],
      ),
    );
  }
}
