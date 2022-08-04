// import 'package:Nouslou/Screens/pages/components/curry_sliver_header.dart';
import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/UserProfile/getUserProfile.dart';

class PickLocationScreen extends StatefulWidget {
  @override
  _PickLocationScreen createState() => _PickLocationScreen();
}

class _PickLocationScreen extends State<PickLocationScreen> {
  Widget _pickLocationWidget(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Center(
        child: ListTile(
            title: Text(
              text,
              style: TextStyle(fontFamily:'Hurme',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            subtitle: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("Refuse",
                        style: TextStyle(fontFamily:'Hurme',
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.green)),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Accept",
                      style: TextStyle(fontFamily:'Hurme',
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            leading: Material(
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              color: Colors.transparent,
              child: Ink.image(
                image: NetworkImage(
                    "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX25634105.jpg"),
                fit: BoxFit.cover,
                width: 85.0,
                height: 85.0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage();
                        },
                      ),
                    );
                  },
                ),
              ),
            )

            ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // print(_nameList.toString());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFFFF6255),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        width: size.width,
        height: size.height * 0.14,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Center(
          child: ListTile(
            title: Text(
              "",
              style: TextStyle(fontFamily:'Hurme',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
    );
  }
}
