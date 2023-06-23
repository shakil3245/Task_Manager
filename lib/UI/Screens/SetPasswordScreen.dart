import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/AppBackgroundImage.dart';

import '../Utils/DartStyles.dart';
import '../Widgets/AppElevatedButton.dart';
import '../Widgets/AppTextFormFiled.dart';
import 'LoginScreen.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundImage(
        Child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Set Password",style: TitleStyle,),
            SizedBox(height: 20,),

            Text("Minimum length password 8 charecter with letter and number combination",
                style:SubTitleStyle),
            SizedBox(height: 20,),

            AppTextFormFiled(
              Controller: TextEditingController(),
              hintText: "Password",
              ObSecureText: true,
            ),
            SizedBox(height: 20,),

            AppTextFormFiled(
              Controller: TextEditingController(),
              hintText: "Confirm Password",
              ObSecureText: true,
            ),

            SizedBox(height: 20,),
            AppElevatedButton(
              child: Text("Verify"),
              onTap: (){
              },
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Have account?"),
                TextButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginScreen()), (route) => false);
                  }, child: const Text("Sign In",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                ),
                ),
              ],)

          ],
      ),
        ),),
    );
  }
}
