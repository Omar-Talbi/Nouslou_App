import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/Login/components/background.dart';
import 'package:Nouslou/Screens/SignupProfileInfo/SignupProfileInfo_screen.dart';
import 'package:Nouslou/components/resend_code.dart';
import 'package:Nouslou/components/rounded_button.dart';
import 'package:Nouslou/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Phone number verification",
              style: TextStyle(fontFamily:'Hurme',fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/phone_verif.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Please enter the verification code \n sent to +216********",
              style: TextStyle(fontFamily:'Hurme',fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Verification code",
              icon: Icons.confirmation_number,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Verify",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupProfileInfoScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            ResendCode(
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
