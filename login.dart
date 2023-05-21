import 'package:flutter/material.dart';
import 'SignUp.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
   
  @override
  Widget build(BuildContext context) {
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
                         Navigator.push(context,MaterialPageRoute(builder: ((context) => SignUp()))),
                      
            child: Text( 
              "SIGN UP",
              textAlign: TextAlign.center,
              style: TextStyle(
                    color: Colors.white
              ),
            ),
            ),
                     ],
                   ),
            Text(
              "Sign In To Continue",
              style: TextStyle(
                   fontSize: 25,
              ),
            ),
            Row(
              children: [
                    Container(
                      margin: EdgeInsets.all(10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                    Container(
                      margin:EdgeInsets.only(right:20 ) ,
                      child: const Text(
                        "Forget Password*",
                        style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                        )
                      ),
                    ),
              ],
            ),
            
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(20,0, 20, 0),
              
              child: const TextField(
                 
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
                Navigator.push(context,MaterialPageRoute(builder: ((context) => SignUp()))),
               child: Container(
                child: Text(
                  "SIGN IN",
                  
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontStyle: FontStyle.italic
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