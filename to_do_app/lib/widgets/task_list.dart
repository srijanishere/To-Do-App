import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ListView.builder only builds the components of the list which is visible to the user on the screen
    //if there were a 1000 items, it would only build the ones till which the user can see on the screen
    //and keep building the ones as the user scrolls
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks![index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.taskName,
              priority: task.priority,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount, //no.of tasks = length of tasks[]
        );
      },
    );
  }
}
