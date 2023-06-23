import 'package:flutter/material.dart';
import 'UI/Screens/LoginScreen.dart';

void main(){
  runApp( TaskManagerApp());
}

class TaskManagerApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}