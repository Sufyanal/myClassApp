import 'dart:math';

import 'login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
   SignUp({super.key});

   TextEditingController _PasswordController = TextEditingController();
    
    String Password = "";
  @override
  Widget build(BuildContext context) {
    
    var navigator = Navigator;
    return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Login"),
    //   ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/header.png",
            ),
             Spacer(),
               Column(
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       ElevatedButton(onPressed:() =>
                         Navigator.push(context,MaterialPageRoute(builder: ((context) => LoginPage()))),
            child: Text( 
              "SIGN IN",
              textAlign: TextAlign.center,
              style: TextStyle(
                    color: Colors.white
              ),
            ),
            ),
                     ],
                   ),
            Text(
              "New User? Get Started Now",
              style: TextStyle(
                   fontSize: 25,
              ),
            ),
            Row(
              children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 20,
                      width: 330,
                     
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/facebook.png"
                          ),
                           Image.asset(
                            "assets/google.png"
                          ),
                           Image.asset(
                            "assets/twitter.png"
                          ),
                        ],
                      ),
                    ),
              ],
            ),
            Text(
              " OR "
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(

                     decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      labelText: "Email ID",
                    border:OutlineInputBorder(),
                    ),
              ),
            ),
           
                   Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              
              child: TextField(
                controller:_PasswordController,
                 decoration: InputDecoration(
                       hintText: "Enter Your Password",
                        labelText: "Password",
                       border:OutlineInputBorder(

                    ),
                      
                    ),
              ),
            ),
             InkWell(
                onTap: () =>
               _PasswordController.text = generatedPassword (),
               child: Container(
                child: Text(
                  "SIGN UP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.only(top: 5),
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius:BorderRadius.circular(25), 
                ),
             
                
               ),
             ),
             Text(
              "$Password"
             ),

             Text(
              "Terms and Conditions | Privacy Policy",
              style: TextStyle(
                    fontSize: 10,
              ),
            ),
                 ],
               ),
              Spacer(),
           Image.asset("assets/footer.png"),
          ],
        )
      ),
    );
  }
}
String generatedPassword (){
  String Uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lowerCase = "aqwertyuipsdfghjklmnbvcxz";
  String number = '1234567890';
  String speicalChar = "!@#%^&*()";
  int length = 17;
  String Password = "";
  Random rand = Random();


  String seed = Uppercase +lowerCase + number + speicalChar;
   List<String> list = seed.split('').toList();

   for (var i = 0; i < length; i++) {
    int index = rand.nextInt(list.length);
    Password += list [index]; 

    //  if(length == 0){
    //   print("Password is done");
    //  }else {
    //   print("Password is bad");
    //  }

   }

 return Password;
}