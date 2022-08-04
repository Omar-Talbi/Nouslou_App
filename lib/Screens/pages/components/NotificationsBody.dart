// import 'package:Nouslou/Screens/pages/components/curry_sliver_header.dart';
import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/UserProfile/getUserProfile.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreen createState() => _NotificationsScreen();
}

class _NotificationsScreen extends State<NotificationsScreen> {
  Widget _buildListWidget(String text) {
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
                            color: Colors.red)),
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
            //CircleAvatar(
            //   backgroundImage: NetworkImage(
            //     "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX25634105.jpg",
            //   ),
            //   backgroundColor: Colors.grey,
            //   radius: 40,
            // ),
            ),
      ),
    );
  }

  // void _submit() {
  //   if (!_formKey.currentState.validate()) {
  //     return;
  //   }

  //   _formKey.currentState.save();
  // }

  @override
  Widget build(BuildContext context) {
    // print(_nameList.toString());

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
             Navigator.of(context).pop();
          },
        ),
            title: Text('Notifications'),
            backgroundColor: Color(0xFFFF6255),
            expandedHeight: 60,
          ),
          // CurrySliverHeader(Colors.purple, "Header 1"),
          // CurrySliverHeader(Colors.deepPurple, "Header 2"),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildListDelegate([
              _buildListWidget("Omar Talbi"),
              _buildListWidget("Ahmed Ahmed"),
              _buildListWidget("Amine Talbi"),
              _buildListWidget("Aymen Aymen Missaoui "),
              _buildListWidget("Salma"),
              _buildListWidget("Eya"),
              _buildListWidget("Anis"),
            ]),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate([
          //     Container(
          //       margin: EdgeInsets.all(24),
          //       child: Form(
          //         key: _formKey,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: <Widget>[
          //             Text('Add Name', style: TextStyle(fontFamily:'Hurme',fontSize: 22)),
          //             _buildNameField(),
          //             SizedBox(height: 16),
          //             RaisedButton(
          //               child: Text('Submit'),
          //               onPressed: _submit,
          //             ),
          //           ],
          //         ),
          //       ),
          //     )
          //   ]),
          // ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
          //   delegate:
          //       SliverChildBuilderDelegate((BuildContext context, int index) {
          //     return Container(
          //       padding: EdgeInsets.all(10),
          //       color: Colors.deepPurple,
          //       child: Center(
          //         child: Text(
          //           _nameList[index],
          //           textAlign: TextAlign.center,
          //           style: TextStyle(fontFamily:'Hurme',color: Colors.white, fontSize: 20),
          //         ),
          //       ),
          //     );
          //   }, childCount: _nameList.length),
          // )
        ],
      ),
    );
  }
}
