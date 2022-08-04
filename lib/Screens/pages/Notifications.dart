import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/pages/components/NotificationsBody.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class Notifications extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationsScreen(),
    );
  }
}
