import 'package:flutter/material.dart';
import 'package:Nouslou/components/text_field_container.dart';
import 'package:Nouslou/constants.dart';
import 'package:date_time_picker/date_time_picker.dart';

class RoundedInputFieldDate extends StatelessWidget {
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldDate({
    Key key,
    this.icon = Icons.date_range,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime d;
    FocusNode _focusNode;

    return TextFieldContainer(
      child: //TextField(
          //   onTap: () {
          //     Future<void> _selectDate(BuildContext context) async {
          //       d = await showDatePicker(
          //         context: context,
          //         initialDate: DateTime.now(),
          //         firstDate: DateTime(1960),
          //         lastDate: DateTime(2023),
          //       );
          //     }
          //     _selectDate(context);
          //   },
          //   readOnly: true,
          //   onChanged: onChanged,
          //   cursorColor: kPrimaryColorIcon,
          //   decoration: InputDecoration(
          //     icon: Icon(
          //       icon,
          //       color: kPrimaryColorIcon,
          //     ),
          //     hintText: d.toString(),
          //     border: InputBorder.none,
          //   ),
          // ),
          DateTimePicker(
        icon: Icon(Icons.date_range,color: Colors.white,),
        calendarTitle: "Select your birth date :",
        initialValue: '',
        firstDate: DateTime(1900),
        lastDate: DateTime(2150),
        dateLabelText: 'Birthday',
        onChanged: (val) => print(val),
        validator: (val) {
          print(val);
          return null;
        },
        onSaved: (val) => print(val),
      ),
    );
  }
}
