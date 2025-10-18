import 'package:flutter/material.dart';
import 'package:todo_list/Screens/AddTaskPage.dart';
import 'package:todo_list/Screens/CompletedTasksPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> taskList = ["Testing"];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  child: Text(taskList[index]),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        taskList.remove(taskList.removeAt(index));
                        print(taskList);

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Task deleted"),
                              backgroundColor: Colors.red,
                              duration: const Duration(seconds: 2),
                            )
                        );
                      });
                    },
                    icon: Icon(Icons.delete, size: 40, color: Colors.redAccent),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        completedTaskList.add(taskList[index]);
                        taskList.remove(taskList.removeAt(index));

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:Text("Task Completed"),
                              backgroundColor: Colors.green[900],
                              duration:  const Duration(seconds: 2),
                          )
                        );
                      });
                    },
                    icon: Icon(
                      Icons.done,
                      size: 40,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
