import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

class TasksList extends StatelessWidget {
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
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks![index].isDone,
              taskTitle: taskData.tasks![index].taskName,
              priority: taskData.tasks![index].priority,
              checkboxCallback: (bool? checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount, //no.of tasks = length of tasks[]
        );
      },
    );
  }
}
