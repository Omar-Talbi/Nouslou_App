import 'dart:io';

import 'package:Nouslou/components/rounded_input_field_car.dart';
import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/Signup/components/background.dart';
import 'package:Nouslou/components/rounded_button.dart';
import 'package:Nouslou/components/rounded_input_field.dart';
import 'package:Nouslou/components/rounded_input_field_number.dart';
import 'package:Nouslou/components/rounded_input_field_Gender.dart';
import 'package:Nouslou/components/rounded_input_field_date.dart';
import 'package:Nouslou/Screens/sidebar/sidebar_layout.dart';
import 'package:image_picker/image_picker.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    File _image;
    Future setImage() async {
      final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.12),
            Text(
              "Personal informations",
              style: TextStyle(fontFamily:'Hurme',fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://cdn.onlinewebfonts.com/svg/img_415067.png",
                            ))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Color(0xFFFF6255),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setImage();
                          },
                          icon: Icon(Icons.edit),
                          iconSize: 19.0,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            RoundedInputField(
              hintText: "Your first name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your last name",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedInputFieldDate(
              icon: Icons.date_range,
              onChanged: (value) {},
            ),
            // RoundedInputFieldList(
            //   hintText: "Gender",
            //   icon: Icons.person,
            // ),
            RoundedInputFieldNumber(
              hintText: "N° CIN",
              icon: Icons.insert_drive_file,
              onChanged: (value) {
              },
            ),
            RoundedInputField(
              hintText: "Address",
              icon: Icons.location_on,
              onChanged: (value) {
              },
            ),
            RoundedInputField(
              hintText: "Car matricule",
              icon: Icons.car_repair,
              onChanged: (value) {
              },
            ),
            DropDownCar(),
            DropDown(),
            RoundedButton(
              text: "Submit",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SideBarLayout();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
