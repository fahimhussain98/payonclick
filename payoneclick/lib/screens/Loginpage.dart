import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payoneclick/Api_Services/Api_Service.dart';
import 'package:payoneclick/Api_Services/Api_models/Login_Model.dart';
import 'package:payoneclick/navBar/BottomNav.dart';
import 'package:payoneclick/screens/home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  LoginModel loginModel = LoginModel();

  bool _isObscure = true;
  bool _isChecked = false;
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  void dispose() {
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'image/pagedesign.png',
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: Image.asset("image/icon2.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text(
                  "LOG IN",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                height: 50,
                child: TextField(
                  controller: userName,
                  cursorColor: Colors.black87,
                  decoration: InputDecoration(
                    hintText: "Username",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                height: 50,
                child: TextField(
                  controller: password,
                  cursorColor: Colors.black87,
                  obscureText: passwordVisible,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 350,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 50),
                child: ElevatedButton(
                  onPressed: () async {
                    if (userName.text.isEmpty && password.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter both username and password.'),
                        ),
                      );
                    } else {
                      var loginResponse = await ApiServices().loginwithModel(userName.text, password.text);

                      if (loginResponse != null) {
                        setState(() {
                          loginModel = loginResponse;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                // NavBar(
                                //   WalletBalance: loginModel.data!.walletBalance ?? "No balance",
                                // )
                            //i wanna add the BottomNavBar
                              //  home(
                              // WalletBalance: loginModel.data!.walletBalance ?? "No balance",
                               //   loginModelData: loginModel,//ye sara date bhej dega

                                //),
                            NavBar(
                              loginModelData: loginModel,
                            )
                          ),
                        );
                      } else {
                        print('Login failed');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Login failed. Please check your credentials.'),
                          ),
                        );
                      }
                    }
                  },
                  child: Text('Log IN', style: TextStyle(fontSize: 25)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue.shade400,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                  //  Text(ApiServices.loginwithModel!)
                  ],
                ),
              )

              // Align(
              //   alignment: Alignment.center,
              //   child: Padding(
              //     padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              //     child: Text(
              //       "Forget Password?",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.center,
              //   child: Padding(
              //     padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              //     child: Text(
              //       "Don't have an Account Yet",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 8),
              // Align(
              //   alignment: Alignment.center,
              //   child: Padding(
              //     padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
              //     child: Text(
              //       "SIGN UP..",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 20,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
