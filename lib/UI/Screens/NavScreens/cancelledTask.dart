import 'package:flutter/material.dart';

import '../../Widgets/AppBackgroundImage.dart';
import '../../Widgets/taskCard.dart';
class CancelledTask extends StatefulWidget {
  const CancelledTask({Key? key}) : super(key: key);

  @override
  State<CancelledTask> createState() => _CancelledTaskState();
}

class _CancelledTaskState extends State<CancelledTask> {
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
              taskchipText: "Deleted",
              taskbgColor: Colors.red,
              onDeletePress: (){},
              onEditPress: (){},
            ),
          );
        }
    ));
  }
}
