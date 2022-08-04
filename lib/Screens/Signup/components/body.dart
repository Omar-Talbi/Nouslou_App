import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/Login/login_screen.dart';
import 'package:Nouslou/Screens/VerifyNumber/VerifyNumberScreen.dart';
import 'package:Nouslou/Screens/Signup/components/background.dart';
import 'package:Nouslou/components/already_have_an_account_acheck.dart';
import 'package:Nouslou/components/rounded_button.dart';
import 'package:Nouslou/components/rounded_input_field.dart';
import 'package:Nouslou/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Phone Number",
              icon: Icons.phone,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              hintText: "Confirm password",
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VerifyNumberScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
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
          ],
        ),
      ),
    );
  }
}
