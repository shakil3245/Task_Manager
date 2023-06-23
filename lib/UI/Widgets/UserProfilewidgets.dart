import 'package:flutter/material.dart';

import '../Screens/profileDetails.dart';
class UserProfileWidgets extends StatelessWidget {
  const UserProfileWidgets({
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
                    left: 26, top: 35)
            ),

          ],
        ),
    );
  }
}