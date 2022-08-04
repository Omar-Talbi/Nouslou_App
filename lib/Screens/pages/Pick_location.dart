import 'package:flutter/material.dart';
import 'package:Nouslou/Screens/pages/components/pick_locationBody.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class PickLocation extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PickLocationScreen(),
    );
  }
}
