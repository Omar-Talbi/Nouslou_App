import 'package:flutter/material.dart';
import 'package:Nouslou/components/text_field_container.dart';
import 'package:Nouslou/constants.dart';

class RoundedInputFieldNumber extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldNumber({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        cursorColor: kPrimaryColorIcon,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColorIcon,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
