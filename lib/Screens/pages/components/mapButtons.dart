import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:Nouslou/Screens/pages/Pick_location.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[500],
                          blurRadius: 5.0,
                          offset: Offset(1.0, 2.0),
                          spreadRadius: 5.0)
                    ],
                  ),
                  child: ClipOval(
                    child: Material(
                      color: Colors.grey[400], // button color
                      child: InkWell(
                        splashColor: Color(0xFFFF0E61), // inkwell color
                        child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(Icons.subdirectory_arrow_right)),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  title: Text("Choose date and time :"),
                                  content: DateTimePicker(
                                    type: DateTimePickerType.dateTimeSeparate,
                                    dateMask: 'd MMM, yyyy',
                                    initialValue: DateTime.now().toString(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                    icon: Icon(Icons.event),
                                    dateLabelText: 'Date',
                                    timeLabelText: "Hour",
                                    selectableDayPredicate: (date) {
                                      // Disable weekend days to select from the calendar
                                      if (date.weekday == 6 ||
                                          date.weekday == 7) {
                                        return false;
                                      }
                                      return true;
                                    },
                                    onChanged: (val) => print(val),
                                    validator: (val) {
                                      print(val);
                                      return null;
                                    },
                                    onSaved: (val) => print(val),
                                  ),
                                  actions: [
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Cancel")),
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return PickLocation();
                                              },
                                            ),
                                          );
                                        },
                                        child: Text("Confirm")),
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  )),
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.0-9/82473843_2509139115878336_2235339162544766976_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=yNPfqTGS0z4AX8QtZgm&_nc_ht=scontent.ftun7-1.fna&oh=e99a303bff65faadd18cb2f5759291e2&oe=600B82C1",
              //   ),
              //   backgroundColor: Colors.yellow,
              //   // child: Icon(
              //   //   Icons.perm_identity,
              //   //   color: Colors.white,
              //   // ),
              //   radius: 40,
              // ),
            )
          ],
        ),
      ),
    );
  }
}
