import 'package:flutter/material.dart';
import '../Widgets/UserProfilewidgets.dart';
import 'NavScreens/cancelledTask.dart';
import 'NavScreens/completedTask.dart';
import 'NavScreens/inProgressTask.dart';
import 'NavScreens/newTaskScreen.dart';
import 'NavScreens/newTaskScreenAdd.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _screen = [
    NewTaskScreen(),
    CompletedTask(),
    CancelledTask(),
    InProgressTask(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          UserProfileWidgets(),
          Expanded(child: _screen[_selectedIndex]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTaskScreenAdd()));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        onTap: (index){
          _selectedIndex = index;
          setState(() {

          });
        },
        currentIndex: _selectedIndex,


        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.new_label_outlined),label: "New"),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined),label: "Canceled"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Progress"),
      ],
      ),

    );
  }
}


