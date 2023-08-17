import 'package:flutter/material.dart';

class EmptyTaskScreen extends StatelessWidget {
  const EmptyTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.not_interested_rounded,
          size: 130.0,
          color: Color(0xff1d4c3d).withOpacity(0.2),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Press on the icon above to add a task',
                  style: TextStyle(
                    color: Color(0xff1d4c3d).withOpacity(0.7),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Icon(
                  Icons.assignment_add,
                  color: Color(0xff1d4c3d).withOpacity(0.7),
                  size: 23.0,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Long-press a task to delete',
              style: TextStyle(
                color: Color(0xff1d4c3d).withOpacity(0.7),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    ));
  }
}
