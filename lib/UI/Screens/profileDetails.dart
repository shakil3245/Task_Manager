import 'package:flutter/material.dart';

import '../Utils/DartStyles.dart';
import '../Widgets/AppBackgroundImage.dart';
import '../Widgets/AppElevatedButton.dart';
import '../Widgets/AppTextFormFiled.dart';
import 'NavScreens/newTaskScreenAdd.dart';
class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundImage(
        Child: Column(
          children: [
            const Profile(),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  Text("Update Profile",style: TitleStyle,),
                  SizedBox(height: 16,),
                  InkWell(
                    onTap: (){},
                    child: Row(children: [
                        Container(
                        child: Text("Photos"),
                          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),

                          ),
                        ),
                      Expanded(
                        child: Container(
                          child: Text(""),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),

                          ),
                        ),
                      ),
                    ],),
                  ),
                  SizedBox(height: 16,),
                  AppTextFormFiled(
                    hintText: "Email",
                    Controller: TextEditingController(),),
                  SizedBox(height: 16,),
                  AppTextFormFiled(
                    hintText: "First name",
                    Controller: TextEditingController(),),
                  SizedBox(height: 16,),
                  AppTextFormFiled(
                    hintText: "Last Name",
                    Controller: TextEditingController(),),
                  SizedBox(height: 16,),
                  AppTextFormFiled(
                    hintText: "Mobile",
                    Controller: TextEditingController(),),
                  SizedBox(height: 25,),
                  AppTextFormFiled(
                    hintText: "Password",
                    ObSecureText: true,
                    Controller: TextEditingController(),),
                  SizedBox(height: 25,),
                  AppElevatedButton(onTap: (){},
                    child: Icon(Icons.arrow_circle_right_outlined),)
                ],),
            ))

          ],
        ),
      ),
    );
  }
}
