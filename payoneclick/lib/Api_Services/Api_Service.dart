
//
// class ApiServices {
//   Future<LoginModel?> loginwithModel(String userName, String password) async {
//     try {
//       var url = Uri.parse("http://api.payonclick.in/Vr1.0/74536/DJKIJF09320923JSDFOJDFLMSDS/KVLKMS09232309283KJSDJLWLEEJ203/api/UserLogin");
//
//       var response = await http.post(
//         url,
//         // headers: {
//         //   'Content-Type': 'application/json',
//         // },
//         body: jsonEncode({
//           "userName": userName,
//           "password": password,
//           "tokenKey": "1234",
//           "deviceInfo": "1234"
//         }),
//       );
//
//       if (response.statusCode == 200) {
//         print('Response body: ${response.body}');
//         return LoginModel.fromJson(jsonDecode(response.body));
//       } else {
//         print('Failed to login with status code: ${response.statusCode}');
//         print('Response body: ${response.body}');
//         return null;
//       }
//     } catch (e) {
//       print('Error: $e');
//       return null;
//     }
//   }
// }



import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:payoneclick/Api_Services/Api_models/Login_Model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// class ApiServices {
//   Future<LoginModel?> loginwithModel(String userName, String password) async {
//     var url = Uri.parse("http://api.payonclick.in/Vr1.0/74536/DJKIJF09320923JSDFOJDFLMSDS/KVLKMS09232309283KJSDJLWLEEJ203/api/UserLogin");
//
//     String basicAuth = 'Basic ' + base64Encode(utf8.encode('webtech#\$%^solution\$\$&&@@&^&july2k21:basic%%##@&&auth&#&#&#&@@#&pasWtS2021'));
//
//     try {
//       var response = await http.post(
//         url,
//         headers: {
//           'Authorization': userName,
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           "userName": userName,
//           "password": password,
//           "tokenKey": "1234",
//           "deviceInfo": "1234"
//         }),
//       );
//
//       if (response.statusCode == 200) {
//         return LoginModel.fromJson(jsonDecode(response.body));
//       } else {
//         print('Failed to login with status code: ${response.statusCode}');
//         print('Response body: ${response.body}');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//     return null;
//   }
// }


class ApiServices {
  Future<LoginModel?> loginwithModel(String userName, String password) async {
    var url = Uri.parse("http://api.payonclick.in/Vr1.0/74536/DJKIJF09320923JSDFOJDFLMSDS/KVLKMS09232309283KJSDJLWLEEJ203/api/UserLogin");

    String basicAuth = 'webtech#\$%^solution\$\$&&@@&^&july2k21:basic%%##@&&auth&#&#&#&@@#&pasWtS2021';
    String encodedAuth = 'Basic ' + base64Encode(utf8.encode(basicAuth));

    try {
      var response = await http.post(
        url,
        headers: {
          'Authorization': encodedAuth,
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "userName": userName,
          "password": password,
          "tokenKey": "1234",
          "deviceInfo": "1234"
        }),
      );

      if (response.statusCode == 200) {
        return LoginModel.fromJson(jsonDecode(response.body));
      } else {
        print('Failed to login with status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return null;
  }



}