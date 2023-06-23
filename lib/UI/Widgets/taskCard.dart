import 'package:flutter/material.dart';
class TaskListItem extends StatelessWidget {
  final String taskHeading;
  final String taskDiscriptions;
  final String taskDate;
  final String taskchipText;
  final Color taskbgColor;
  final VoidCallback onEditPress, onDeletePress;

  const TaskListItem({super.key, required this.taskHeading, required this.taskDiscriptions, required this.taskDate, required this.taskchipText, required this.onEditPress, required this.onDeletePress , required this.taskbgColor});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(taskHeading,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text(taskDiscriptions,style: TextStyle(fontSize: 12),),
            SizedBox(height: 10,),
            Text("Date : $taskDate",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Row(
              children: [

                Chip(label: Text(taskchipText,style: TextStyle(color: Colors.white),),backgroundColor: taskbgColor,padding: EdgeInsets.symmetric(horizontal: 15),),
                Spacer(),
                Icon(Icons.account_balance_wallet,color: Colors.green,),
                SizedBox(width: 5,),
                Icon(Icons.delete,color: Colors.red,),

              ],
            )
          ],
        ),
      ),
    );
  }
}