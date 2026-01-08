// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../utils/api_constants.dart';

// class AuthService {
//   static Future<Map<String, dynamic>> login({
//     required String email,
//     required String password,
//   }) async {
//     final response = await http.post(
//       Uri.parse(ApiConstants.login),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({
//         "email": email,
//         "password": password,
//       }),
//     );

//     return jsonDecode(response.body);
//   }

//   static Future<Map<String, dynamic>> signup({
//     required String name,
//     required String email,
//     required String password,
//   }) async {
//     final response = await http.post(
//       Uri.parse(ApiConstants.signup),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({
//         "name": name,
//         "email": email,
//         "password": password,
//       }),
//     );

//     return jsonDecode(response.body);
//   }
// }
