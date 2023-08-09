import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(
          0xff536a44), //takes the gray color of the background and helps in achieving the rounded border in the below container
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 25.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xff6a9777).withOpacity(0.7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            ConfirmationSlider(
              onConfirmation: () {},
              backgroundColor: Color(0xff5a5a5a),
              sliderButtonContent: Icon(Icons.arrow_forward),
              backgroundColorEnd: Color(0xffd0f388),
              foregroundColor: Color(0xffa4fc7a),
              text: 'Confirm',
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
