import 'package:flutter/material.dart';
import 'package:task_manager/UI/Widgets/AppBackgroundImage.dart';

import '../../Widgets/taskCard.dart';
class CompletedTask extends StatefulWidget {
  const CompletedTask({Key? key}) : super(key: key);

  @override
  State<CompletedTask> createState() => _CompletedTaskState();
}

class _CompletedTaskState extends State<CompletedTask> {
  @override
  Widget build(BuildContext context) {
    return AppBackgroundImage(Child:
    ListView.builder(
        itemCount: 12,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: TaskListItem(
              taskHeading: "Lorem Ipsam is simple dummy text",
              taskDiscriptions: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              taskDate: "30/03/23",
              taskchipText: "Completed",
              taskbgColor: Colors.green,
              onDeletePress: (){},
              onEditPress: (){},
            ),
          );
        }
    ));
  }
}

