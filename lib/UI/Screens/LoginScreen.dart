import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/AppBackgroundImage.dart';
import '../Utils/DartStyles.dart';
import '../Widgets/AppElevatedButton.dart';
import '../Widgets/AppTextFormFiled.dart';
import 'SignUpScreen.dart';
import 'bottomNavBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Text("Get Start With",style: TitleStyle),
            SizedBox(height: 24,),
            AppTextFormFiled(
              Controller: TextEditingController(),
              hintText: "Email",
            ),
            SizedBox(height: 20,),
            AppTextFormFiled(
              Controller: TextEditingController(),
              hintText: "Password ",
                ObSecureText:true,
            ),
            SizedBox(height: 20,),
            AppElevatedButton(
              child: Icon(Icons.arrow_circle_right_outlined),
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()), (route) => false);
              },
            ),
            SizedBox(height: 40,),
            Center(child: TextButton(
              onPressed: (){
              }, child: const Text("Forget Password ?",style: TextStyle(color: Colors.grey,),),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account?"),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                }, child: const Text("Sign Up!",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
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



