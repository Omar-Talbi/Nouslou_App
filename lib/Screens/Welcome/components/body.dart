import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/Login/login_screen.dart';
import 'package:Nouslou/Screens/Signup/signup_screen.dart';
import 'package:Nouslou/Screens/Welcome/components/background.dart';
import 'package:Nouslou/components/rounded_button.dart';
import 'package:Nouslou/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/fLogo.png",
              width: size.height * 0.40,
              height: size.height * 0.3, 
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
