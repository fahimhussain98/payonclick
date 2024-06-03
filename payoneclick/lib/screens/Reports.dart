import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payoneclick/Drawer/MyCustomDrawer.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      color: Colors.red, // Set the color of the border
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
      body:  Stack(
        children: [ Image.asset(
          "image/ProfileWI.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          ),
          Column(
            children: [
              Center(child: Text(" Reports ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              SizedBox(height: 25,),

              Container(
                height: 60,
               // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                    Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/mobileRecharge.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Recharge Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/bulb.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("BBPS Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/AEPS.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("AePS Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/PAYOUT.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Payout Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/moneyTransfer.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("DMT Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/moneyTransfer.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Exp DMT Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Image.asset("image/wallet.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Add Money Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                // color: Colors.purple,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
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

                  children: [
                    Stack(children:[
                      Image.asset("image/CircleIcon.png"),
                      Center(

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset("image/NSDL.png",color: Colors.white,height: 30,width: 30,),
                          ))
                    ]),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("NSDL PANCARD Reports",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(Icons.keyboard_arrow_right_sharp),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ]
      ),
      //don't go outside the stack

    );
  }
}
