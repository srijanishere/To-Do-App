import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:to_do_app/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Buy Sugar'),
    Task(taskName: 'Buy Tea'),
    Task(taskName: 'Buy Biscuits'),
  ];

  // void sortList() {
  //   setState(() {
  //     tasks.sort((a, b) => a.taskName.compareTo(b.taskName));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //ListView.builder only builds the components of the list which is visible to the user on the screen
    //if there were a 1000 items, it would only build the ones till which the user can see on the screen
    //and keep building the ones as the user scrolls
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].taskName,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length, //no.of tasks = length of tasks[]
    );
  }
}
