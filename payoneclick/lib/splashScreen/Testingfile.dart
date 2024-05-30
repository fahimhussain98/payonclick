//this is testing file for the splash after the login and another in
// file show the splash screen

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// var loginUrlImage = "https://images.pexels.com/photos/269077/pexels-photo-269077.jpeg?auto=compress&cs=tinysrgb&w=600";
//
// class LoginText extends StatefulWidget {
//   const LoginText({super.key});
//
//   @override
//   State<LoginText> createState() => _LoginTextState();
// }
//
// class _LoginTextState extends State<LoginText> with TickerProviderStateMixin{
//   late Animation<double> _animation;
//   late AnimationController _animationController;
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _animationController = AnimationController(vsync: this,duration: Duration(seconds: 20));
//     _animation = CurvedAnimation(parent: _animationController, curve: Curves.linear)
//     ..addListener(() {
//       setState(() {
//
//       });
//     })..addStatusListener((animationStatus) {
//         if(animationStatus == AnimationStatus.completed)
//         {
//           _animationController.reset();
//           _animationController.forward();
//         }
//       });
//     _animationController.forward();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//
//         children: [
//           CachedNetworkImage(
//             imageUrl: loginUrlImage,
//             placeholder: (context,url) => Image.asset(
//               "assets/MaskGroup.png",
//               fit: BoxFit.cover,
//             ),
//              errorWidget:(context,url,error) => const Icon(Icons.error),
//              width:double.infinity,
//              height: double.infinity,
//              fit: BoxFit.cover,
//              alignment:FractionalOffset(_animation.value,0),
//           )
//         ],
//       ),
//     );
//   }
// }
//+++++++++++++++++++++++++++++++++++++++++++++++++
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// var loginUrlImage = "https://images.pexels.com/photos/269077/pexels-photo-269077.jpeg?auto=compress&cs=tinysrgb&w=600";
//
// class LoginText extends StatefulWidget {
//   const LoginText({super.key});
//
//   @override
//   State<LoginText> createState() => _LoginTextState();
// }
//
// class _LoginTextState extends State<LoginText> with TickerProviderStateMixin {
//   late Animation<double> _animation;
//   late AnimationController _animationController;
//   late Future<void> _loadImageFuture;
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(vsync: this, duration: Duration(seconds: 20));
//     _animation = CurvedAnimation(parent: _animationController, curve: Curves.linear)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((animationStatus) {
//         if (animationStatus == AnimationStatus.completed) {
//           _animationController.reset();
//           _animationController.forward();
//         }
//       });
//     _animationController.forward();
//
//     _loadImageFuture = Future.delayed(Duration(seconds: 9));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           FutureBuilder(
//             future: _loadImageFuture,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Image.asset(
//                   "assets/MaskGroup.png",
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   height: double.infinity,
//                 );
//               } else {
//                 return Stack(
//                   children: [
//                     CachedNetworkImage(
//                       imageUrl: loginUrlImage,
//                       placeholder: (context, url) => Image.asset(
//                         "assets/MaskGroup.png",
//                         fit: BoxFit.cover,
//                       ),
//                       errorWidget: (context, url, error) => const Icon(Icons.error),
//                       width: double.infinity,
//                       height: double.infinity,
//                       fit: BoxFit.cover,
//                       alignment: FractionalOffset(_animation.value, 0),
//                     ),
//                     Positioned(
//                       bottom: 50, // Adjust as needed
//                       left: 20,   // Adjust as needed
//                       child: Container(
//                         color: Colors.black.withOpacity(0.5), // Background color with opacity
//                         padding: EdgeInsets.all(10), // Padding inside the container
//                         child: Text(
//                           "This is the testing of the stack and image",
//                           style: TextStyle(
//                             color: Colors.white, // Text color
//                             fontSize: 18,        // Font size
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//+++++++++++++++++++++++++++++++++++++


var loginUrlImage = "https://images.pexels.com/photos/269077/pexels-photo-269077.jpeg?auto=compress&cs=tinysrgb&w=600";

class LoginText extends StatefulWidget {
  const LoginText({super.key});

  @override
  State<LoginText> createState() => _LoginTextState();
}

class _LoginTextState extends State<LoginText> {
  late Future<void> _loadImageFuture;

  @override
  void initState() {
    super.initState();
    _loadImageFuture = Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: _loadImageFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Image.asset(
                  "assets/MaskGroup.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                );
              } else {
                return Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: loginUrlImage,
                      placeholder: (context, url) => Image.asset(
                        "assets/MaskGroup.png",
                        fit: BoxFit.cover,
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 50, // Adjust as needed
                      left: 20,   // Adjust as needed
                      child: Container(
                        color: Colors.black.withOpacity(0.5), // Background color with opacity
                        padding: EdgeInsets.all(10), // Padding inside the container
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => wtsAirtelScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Let's get Rides  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(Icons.arrow_right_alt_outlined,
                                  color: Colors.white), // Add the arrow icon here
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Radius
                            ),
                            backgroundColor: const Color(0xFF2b2764),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

