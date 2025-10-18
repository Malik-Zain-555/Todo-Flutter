import 'package:flutter/material.dart';
import 'package:todo_list/Screens/CompletedTasksPage.dart';
import 'package:todo_list/Screens/HomePage.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

final myController = TextEditingController();

void clearTaskValue() {
  myController.clear();
}

void getTaskValue() {
  taskList.add(myController.text.trim());
  myController.clear();
  print(taskList);
}

class _AddTaskPageState extends State<AddTaskPage> {
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
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: TextField(
                controller: myController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "enter your task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clearTaskValue();
                    });
                  },
                  child: Text("clear", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (myController.text.trim() == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("You can't create empty task."),
                            backgroundColor: Colors.red,
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      } else {
                        getTaskValue();

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Task Created Successfully" , style: TextStyle(color: Colors.black),),
                            backgroundColor: Colors.green,
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    });
                  },
                  child: Text("create", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
