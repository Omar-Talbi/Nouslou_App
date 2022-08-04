import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:Nouslou/Screens/UserProfile/UserProfileScreen.dart';


class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Account",
        style: TextStyle(fontFamily:'Hurme',fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
