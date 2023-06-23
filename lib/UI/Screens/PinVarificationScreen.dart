import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/UI/Screens/LoginScreen.dart';
import '../Utils/DartStyles.dart';
import '../Widgets/AppBackgroundImage.dart';
import '../Widgets/AppElevatedButton.dart';
import 'SetPasswordScreen.dart';
class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {

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
              Text("Pin Varification",style: TitleStyle,),
              SizedBox(height: 20,),

              Text("A 6 digit varification pin will sent to your email address",
                  style:SubTitleStyle),
              SizedBox(height: 20,),

              PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  selectedColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeFillColor: Colors.white,
                  inactiveColor: Colors.white,
                  inactiveFillColor: Colors.green,
                ),
                animationDuration: Duration(milliseconds: 300),

                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {

                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },appContext: context,
              ),

              SizedBox(height: 20,),
              AppElevatedButton(
                child: Icon(Icons.arrow_circle_right_outlined),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SetPasswordScreen()));
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
