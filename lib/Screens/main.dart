import 'package:flutter/material.dart';
import 'package:todo_list/Screens/AddTaskPage.dart';
import 'package:todo_list/Screens/CompletedTasksPage.dart';
import 'HomePage.dart'; // Your current HomePage file

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    AddTaskPage(),
    CompletedTasksPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        transitionBuilder: (child, animation) => SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellowAccent[700],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 40, color: Colors.black),
              onPressed: () => setState(() => _selectedIndex = 0),
            ),
            IconButton(
              icon: Icon(Icons.add_circle, size: 40, color: Colors.black),
              onPressed: () => setState(() => _selectedIndex = 1),
            ),
            IconButton(
              icon: Icon(Icons.done, size: 40, color: Colors.black),
              onPressed: () => setState(() => _selectedIndex = 2),
            ),
          ],
        ),
      ),
    );
  }
}
