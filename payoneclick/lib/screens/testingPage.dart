import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:payoneclick/screens/home.dart';



class Testingpage extends StatefulWidget {
  final String? status;
  final String? statuscode;
  final bool showStateTextField;

  const Testingpage({Key? key, this.showStateTextField = true, this.status, this.statuscode})
      : super(key: key);

  @override
  State<Testingpage> createState() => _TestingpageState();
}

class _TestingpageState extends State<Testingpage> {
  TextEditingController userName1 = TextEditingController();
  TextEditingController password1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("This is using login API showing data...."),
      ),
      body: Column(
        children: [
          TextField(controller:userName1 ,decoration: InputDecoration(hintText: "username"),),
          TextField(controller:password1 ,decoration: InputDecoration(hintText: "username"),),
          ElevatedButton(onPressed: (){
            loginUser();
          }, child: Text("login"))

    ],
      ),
    );
  }

  Future<void> loginUser() async {
    if (userName1.text.isNotEmpty && password1.text.isNotEmpty) {
      var url = Uri.parse("http://api.payonclick.in/Vr1.0/74536/DJKIJF09320923JSDFOJDFLMSDS/KVLKMS09232309283KJSDJLWLEEJ203/api/UserLogin");

      String basicAuth = 'webtech#\$%^solution\$\$&&@@&^&july2k21:basic%%##@&&auth&#&#&#&@@#&pasWtS2021';
      String encodedAuth = 'Basic ' + base64Encode(utf8.encode(basicAuth));

      var response = await http.post(
        url,
        headers: {
          'Authorization': encodedAuth,
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "userName": userName1.text,
          "password": password1.text,
          "tokenKey": "1234",
          "deviceInfo": "1234"
        }),
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (jsonResponse['statuscode'] == 'TXN') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed. Please check your credentials.")));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to login with status code: ${response.statusCode}")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Both username and password are required.")));
    }
  }
}