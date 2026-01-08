// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'login_screen.dart';
// import 'signup_screen.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       body: SafeArea(
//         child: Column(
//           children: [
//             const SizedBox(height: 60),

//             // Welcome Image
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Image.asset(
//                 'assets/image.png',
//                 height: 350,
//                 fit: BoxFit.contain,
//               ),
//             ),

//             const Spacer(),

//             Text(
//               'Build Awesome Apps',
//               style: GoogleFonts.poppins(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 10),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Text(
//                 "Let's put your creativity on the development highway.",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.poppins(fontSize: 14),
//               ),
//             ),

//             const SizedBox(height: 30),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: OutlinedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => const LoginPage(),
//                           ),
//                         );
//                       },
//                       style: OutlinedButton.styleFrom(
//                         side: const BorderSide(color: Colors.black),
//                         padding:
//                             const EdgeInsets.symmetric(vertical: 15),
//                       ),
//                       child: const Text(
//                         "LOGIN",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => const SignupPage(),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         padding:
//                             const EdgeInsets.symmetric(vertical: 15),
//                       ),
//                       child: const Text(
//                         "SIGNUP",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }
