import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;
import 'package:payoneclick/Drawer/MyCustomDrawer.dart';

import '../Api_Services/Api_models/Login_Model.dart';




class Testingpage extends StatefulWidget {

  final bool showStateTextField;

  const Testingpage({Key? key, this.showStateTextField = true,

  })
      : super(key: key);

  @override
  State<Testingpage> createState() => _TestingpageState();
}

class _TestingpageState extends State<Testingpage> {
  TextEditingController userName1 = TextEditingController();
  TextEditingController password1 = TextEditingController();

  var dropdownValue;
  String? _selectedState;

  final List<String> _states = [
    "Assam", "Bihar Jharkhand", "Chennai", "Delhi NCR", "Gujarat", "Haryana",
    "Himachal Pradesh", "Jammu Kashmir", "Karnataka", "Kerala", "Kolkata",
    "Madhya Pradesh Chhattisgarh", "Maharashtra Goa", "Mumbai", "North East",
    "Orissa", "Punjab", "Rajasthan", "Tamil Nadu", "UP East", "UP West", "West Bengal"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("APP BAr"),
        leading: Builder(
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
      ),
      drawer: MyCustomDrawer(),
      body: Stack(
        children: [
          Image.asset(
            "image/airtelBack.png",
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
              child: SingleChildScrollView(
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
                      SizedBox(height: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Subscribe ID",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black,)),
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 50, // Specify the desired height here
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 1), // Set the default border color to gray
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          //this is Droupdown
                          Text("Seclet Operator"),
                          SizedBox(height: 5,),
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
                          SizedBox(height: 5,),



                          if (widget.showStateTextField)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey, width: 1),
                                  ),
                                  child: DropdownButtonFormField<String>(
                                    value: _selectedState,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                                      border: InputBorder.none,
                                    ),
                                    items: _states.map((String state) {
                                      return DropdownMenuItem<String>(
                                        value: state,
                                        child: Text(state),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedState = newValue;
                                      });
                                    },
                                    hint: Text("Select a State"),
                                  ),
                                ),
                                SizedBox(height: 5),
                                // Other widgets if needed
                              ],
                            ),
                          SizedBox(height: 5,),

                          Text("Amount ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black,)),
                          SizedBox(height: 5,),
                          SizedBox(
                            height: 50, // Specify the desired height here
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey), // Set the default border color to gray
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is not focused
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey), // Set the border color when the field is focused
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 5,),
                          //icon + text
                          Container(
                              height: 30,
                              //  color: Colors.purple.shade50,
                              child: Row(
                                children: [
                                  Stack(
                                      children:[
                                        Image.asset("image/ACE.png"),

                                        Center(

                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8,top: 4,bottom: 8,),
                                            child: Icon(Icons.search,size: 18,),
                                          ),
                                        ),

                                      ]),
                                  Text("Browse Plan",style: TextStyle(fontSize: 13,)),
                                  Spacer(),
                                  Text("My plains ",style: TextStyle(fontSize: 13,color: Colors.indigo),),
                                  Image.asset("image/ACE.png"),

                                ],
                              )
                          ),
                          SizedBox(height: 5,),
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





                    ],

                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // color: Colors.amber,
              width: 230,
              height: 80,
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
                        padding: const EdgeInsets.only( left: 5,top: 10),
                        child: Text("Wallet Balance  ",style: TextStyle(fontSize: 15,)),
                      ),
                      // Text("\u20B9 ${MWBmodel?.data?.userBalance ?? '0.00'}"),
                    ],
                  ),
                  Image.asset("image/walletIconIn.png",height: 80,width: 80,),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 90),
              child: CircleAvatar(
                backgroundColor: Colors.grey[50],
                child: Image.asset("image/jioIcon.png",),
                radius: 50,
              ),

            ),
          ),







        ],


      ),


    );
    }

  

}










//this is push API testin with username and password
//       body: Column(
//         children: [
//           TextField(controller:userName1 ,decoration: InputDecoration(hintText: "username"),),
//           TextField(controller:password1 ,decoration: InputDecoration(hintText: "username"),),
//           ElevatedButton(onPressed: (){
//             loginUser();
//           }, child: Text("login"))
//
//     ],
//       ),
//     );
//   }
//
//   Future<void> loginUser() async {
//     if (userName1.text.isNotEmpty && password1.text.isNotEmpty) {
//       var url = Uri.parse("http://api.payonclick.in/Vr1.0/74536/DJKIJF09320923JSDFOJDFLMSDS/KVLKMS09232309283KJSDJLWLEEJ203/api/UserLogin");
//
//       String basicAuth = 'webtech#\$%^solution\$\$&&@@&^&july2k21:basic%%##@&&auth&#&#&#&@@#&pasWtS2021';
//       String encodedAuth = 'Basic ' + base64Encode(utf8.encode(basicAuth));
//
//       var response = await http.post(
//         url,
//         headers: {
//           'Authorization': encodedAuth,
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           "userName": userName1.text,
//           "password": password1.text,
//           "tokenKey": "1234",
//           "deviceInfo": "1234"
//         }),
//       );
//
//       if (response.statusCode == 200) {
//         var jsonResponse = jsonDecode(response.body);
//         if (jsonResponse['statuscode'] == 'TXN') {
//           Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed. Please check your credentials.")));
//         }
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to login with status code: ${response.statusCode}")));
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Both username and password are required.")));
//     }
//   }
// }