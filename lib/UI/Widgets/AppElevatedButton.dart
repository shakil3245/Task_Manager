import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const AppElevatedButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.all(12)
          ),
          onPressed: onTap, child:child),);
  }
}