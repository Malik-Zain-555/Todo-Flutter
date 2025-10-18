import 'package:flutter/material.dart';
import 'package:todo_list/Screens/AddTaskPage.dart';
import 'package:todo_list/Screens/HomePage.dart';

class CompletedTasksPage extends StatefulWidget {
  const CompletedTasksPage({super.key});

  @override
  State<CompletedTasksPage> createState() => _CompletedTasksPageState();
}

List<String> completedTaskList = ["Testing 1"];

class _CompletedTasksPageState extends State<CompletedTasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Todo List"),
        backgroundColor: Colors.yellowAccent[700],
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: completedTaskList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  child: Text(completedTaskList[index]),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
