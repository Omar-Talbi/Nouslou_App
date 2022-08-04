import 'package:flutter/material.dart';
import 'package:Nouslou/components/text_field_container.dart';
import 'package:Nouslou/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const RoundedPasswordField(
      {Key key, this.onChanged, this.hintText: "Password"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool show = true;
    return TextFieldContainer(
      child: TextField(
        obscureText: show,
        onChanged: onChanged,
        cursorColor: kPrimaryColorIcon,
        decoration: InputDecoration(
          hintText: this.hintText,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColorIcon,
          ),

          // setState(() {
          //   show = false;
          // }),
          //   suffixIcon: IconButton(
          //     onPressed: () {},
          //     color: kPrimaryColorIcon,
          //     icon: IconButton(
          //         icon: Icon(Icons.visibility),
          //         onPressed: () {
          //           show = false;
          //           print("hey");
          //         }),
          //   ),
             border: InputBorder.none,
        ),
      ),
    );
  }
}
