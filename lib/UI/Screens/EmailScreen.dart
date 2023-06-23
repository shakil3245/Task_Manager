import 'package:flutter/material.dart';

import '../Utils/DartStyles.dart';
import '../Widgets/AppBackgroundImage.dart';
import '../Widgets/AppElevatedButton.dart';
import '../Widgets/AppTextFormFiled.dart';
import 'LoginScreen.dart';
import 'PinVarificationScreen.dart';
class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundImage(
        Child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Email Address",style: TitleStyle,),
              SizedBox(height: 20,),
              Text("A 6 digit varification pin will sent to your email address",
                style:SubTitleStyle),
             SizedBox(height: 20,),
              AppTextFormFiled(
                Controller: TextEditingController(),
                hintText: "Email ",
              ),
              SizedBox(height: 24,),
              AppElevatedButton(
                child: Icon(Icons.arrow_circle_right_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PinVerificationScreen()));
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
        ),
      ),
    );
  }
}
