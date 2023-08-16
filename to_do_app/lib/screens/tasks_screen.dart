import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_list.dart';
import 'package:to_do_app/screens/add_tasks_screen.dart';
import 'package:to_do_app/models/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [];

  // Widget buildBottomSheet(BuildContext context) {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d4c3d),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //will allow us to create a new task
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTasksScreen((newTaskTitle, taskPriority) {
                  setState(() {
                    tasks.add(
                        Task(taskName: newTaskTitle, priority: taskPriority));
                  });
                  Navigator.pop(context);
                }),
              ),
            ),
            // isScrollControlled: true, //to make the modal occupy the full screen
          );
        },
        backgroundColor: Color(0xff1d4c3d),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.add_task,
                    size: 40.0,
                    color: Color(0xff1d4c3d),
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${tasks.length} Incomplete Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // color: Colors.white,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff72db80), // 0xffb8ecbf
                    Color(0xffC6F187), //  0xffcbefd0
                    Color(0xffedfb8a), // 0xffdff1e3
                  ],
                ),
                // color: Color(0xffd7d3d3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: (tasks.length == 0)
                  ? Center(
                      child: Text(
                        'NO TASKS YET',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff1d4c3d),
                        ),
                      ),
                    )
                  : TasksList(tasks: tasks),
            ),
          ),
        ],
      ),
    );
  }
}
