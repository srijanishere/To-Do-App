import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final int? priority;
  final Function(bool?) checkboxCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.priority,
    required this.checkboxCallback,
  });

  // (bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
            color: Color(0xff1d4c3d).withOpacity(0.15),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )),
        padding: EdgeInsets.all(15.0),
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
                fontWeight: FontWeight.w600,
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
