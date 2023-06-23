import 'package:flutter/material.dart';

import '../Utils/DartStyles.dart';
import '../Widgets/AppBackgroundImage.dart';
import '../Widgets/AppElevatedButton.dart';
import '../Widgets/AppTextFormFiled.dart';
import 'EmailScreen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundImage(
        Child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Join With Us",style: TitleStyle,),
                SizedBox(height: 20,),
                AppTextFormFiled(
                  Controller: TextEditingController(),
                  hintText: "Email",
                ),
                SizedBox(height: 20,),
                AppTextFormFiled(
                  Controller: TextEditingController(),
                  hintText: "First Name",
                ),
                SizedBox(height: 20,),
                AppTextFormFiled(
                  Controller: TextEditingController(),
                  hintText: "Last Name",
                ),
                SizedBox(height: 20,),
                AppTextFormFiled(
                  Controller: TextEditingController(),
                  hintText: "Mobile",
                ),
                SizedBox(height: 20,),
                AppTextFormFiled(
                  Controller: TextEditingController(),
                  hintText: "Password",
                  ObSecureText: true,
                ),
                SizedBox(height: 20,),
                AppElevatedButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailScreen() ));
                  },
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have account?"),
                    TextButton(
                     onPressed: (){
                     Navigator.pop(context);
                     }, child: const Text("Sign In",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                    ),),
                  ],
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
