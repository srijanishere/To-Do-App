import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
  });

  // (bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            Icons.circle_sharp,
            color: Colors.green[600],
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            taskTitle,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              decoration: (isChecked) ? TextDecoration.lineThrough : null,
            ),
          ),
        ],
      ),
      trailing: Checkbox(
        activeColor: Colors.black,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
