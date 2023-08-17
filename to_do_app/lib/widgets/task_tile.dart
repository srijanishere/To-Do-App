import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final int? priority;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.priority,
    required this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Container(
        decoration: BoxDecoration(
            boxShadow: [
              //BoxShadow
            ],
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            )),
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(3.0),
        child: Row(
          children: [
            Icon(
              (Icons.circle_sharp),
              color: (priority == 0) ? Colors.red[600] : Colors.green[500],
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              taskTitle,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                decoration: (isChecked) ? TextDecoration.lineThrough : null,
              ),
            ),
          ],
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.black,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
