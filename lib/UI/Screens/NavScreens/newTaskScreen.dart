import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/AppBackgroundImage.dart';

import '../../Widgets/DashBoardItemCard.dart';
import '../../Widgets/taskCard.dart';
class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundImage(
        Child: Column(children: [
          Row(children:const [
            Expanded(child: DashBoardItemCard(number: 23,text: "New",)),
            Expanded(child: DashBoardItemCard(number: 23,text: "Completed",)),
            Expanded(child: DashBoardItemCard(number: 23,text: "cancelled",)),
            Expanded(child: DashBoardItemCard(number: 23,text: "Progress",)),
          ],),
          Expanded(child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: TaskListItem(
                    taskHeading: "Lorem Ipsam is simple dummy text",
                    taskDiscriptions: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    taskDate: "30/03/23",
                    taskchipText: "New",
                      taskbgColor: Colors.lightBlue,
                    onDeletePress: (){},
                    onEditPress: (){},
                  ),
                );
              }
          ))
        ],),
      ),
    );
  }
}




