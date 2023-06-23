import 'package:flutter/material.dart';
class DashBoardItemCard extends StatelessWidget {
final int number;
final String text;

  const DashBoardItemCard({super.key, required this.number, required this.text});


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical:7 ),
        child: Column(
          children: [
            Text(number.toString(),style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            FittedBox(child: Text(text,style: TextStyle(fontSize: 10),)),
          ],
        ),
      ),
    );
  }
}