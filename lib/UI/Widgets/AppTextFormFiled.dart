import 'package:flutter/material.dart';
class AppTextFormFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController Controller;
  final bool? ObSecureText;

  const AppTextFormFiled({super.key, required this.hintText, required this.Controller, this.ObSecureText});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:Controller ,
      obscureText:ObSecureText ?? false,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )
      ),);
  }
}