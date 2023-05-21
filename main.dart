import 'package:flutter/material.dart';

import 'Screen/splash.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}




// class SignUpPage extends StatelessWidget {
//   const SignUpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/header.png",
//             ),
//              Spacer(),
//                ElevatedButton(onPressed:(){},
//             child: Text( 
//               "LogIN",
//               textAlign: TextAlign.center,
              
//             ),
//             ),
            
           
//             Text(
//               "New User? Get Started Now"
//             ),
//             Row(
//               children: [
//                 Container(
//                   height: 20,
//                   width: 300,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Image.asset(
//                         "assets/facebook.png"
//                       ),
//                        Image.asset(
//                         "assets/google.png"
//                       ),
//                        Image.asset(
//                         "assets/twitter.png"
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               "___________  OR  ____________"
//             ),

//             const Text(
//               "Email ID*",
//               style: TextStyle(
//                 fontSize: 8,
//               )
//             ),
//             Container(
//               height: 8,
//               child: TextField(
//                 decoration: InputDecoration(

//                 ),
//               ),
//             ),
//             const Text(
//               "Password*",
//               style: TextStyle(
//                 fontSize: 8,
//               )
//             ),
//             const Text(
//               "Forget Password*",
//               style: TextStyle(
//             fontSize: 8,
//               )
//             ),
//             Container(
//               height: 15,
//               child: TextField(
//                 decoration: InputDecoration(

//                 ),
//               ),
//             ),
//             //  Container(
//             //   height: 15,
//             //   child: TextField(
//             //     decoration: InputDecoration(

//             //     ),
//             //   ),
//             // ),

//             ElevatedButton(
//               onPressed: (){},
//              child: Text(
//               "SIGN IN",
//               textAlign: TextAlign.center,
//              )),

//              Text(
//               "Terms and Conditions|Privacy Policy"
//             ),





//             Spacer(),
//            Image.asset("assets/footer.png"),
//           ],
//         )
//       ),
//     );
//   }
// }