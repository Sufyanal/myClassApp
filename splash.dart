import 'package:flutter/material.dart';
import 'login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    print("call hogaya");
    Future.delayed(Duration(seconds: 3), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
Image.asset("assets/header.png",
                ),
          Spacer(),
          Text(
            "ANGEL SURE",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: Color(0xff2F80ED)),
          ),
          Image.asset(
                 "assets/logo.png",
            height: 239,
            width: 298,
          ),
          Spacer(),
          Image.asset("assets/footer.png"),
        ]),
      ),
    );
  }
}