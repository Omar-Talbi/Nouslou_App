import 'package:flutter/material.dart';
import 'package:Nouslou/constants.dart';

class ResendCode extends StatelessWidget {
  final bool login;
  final Function press;
  const ResendCode({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Didn't recive code ? " : "Already have an Account ? ",
          style: TextStyle(fontFamily:'Hurme',color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Resend code" : "Sign In",
            style: TextStyle(fontFamily:'Hurme',
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
