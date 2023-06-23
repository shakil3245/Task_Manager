import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/AppBackgroundImage.dart';
import '../../Utils/DartStyles.dart';
import '../../Widgets/AppElevatedButton.dart';
import '../../Widgets/AppTextFormFiled.dart';
import '../profileDetails.dart';
class NewTaskScreenAdd extends StatefulWidget {
  const NewTaskScreenAdd({Key? key}) : super(key: key);

  @override
  State<NewTaskScreenAdd> createState() => _NewTaskScreenAddState();
}

class _NewTaskScreenAddState extends State<NewTaskScreenAdd> {
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
                Text("Add New Task",style: TitleStyle,),
                SizedBox(height: 16,),
                AppTextFormFiled(
                  hintText: "Subject",
                Controller: TextEditingController(),),
                  SizedBox(height: 16,),
                  TextFormField(
                    controller: TextEditingController(),
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "Discription",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),

                  ),
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

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 120,
    width: double.infinity,
    color: Colors.green,
      child: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDetail()));
            },
            leading: CircleAvatar(child: Icon(Icons.person),),
            title: Text("Shakil",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Sakil15-3245@diu.edu.bd",style: TextStyle(fontSize: 12),),
            tileColor: Colors.green,
            textColor: Colors.white,
            contentPadding: EdgeInsets.only(
              left: 26, top: 35),
          ),
        ],
      ),
    );
  }
}
