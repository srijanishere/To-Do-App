import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(
          0xff536a44), //takes the gray color of the background and helps in achieving the rounded border in the below container
      child: BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 25.0,
          ),
          decoration: BoxDecoration(
            color: Color(0xff1d4c3d).withOpacity(0.8),
            // color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 8.0, // shadow blur
                      color: Color(0xffc6e871), // shadow color
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'PRIORITY',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                cornerRadius: 25.0,
                activeBgColors: [
                  [Color(0xffc6e871)],
                  [Color(0xffc6e871)]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey[500],
                inactiveFgColor: Colors.white,
                initialLabelIndex: 1,
                borderWidth: 4.0,
                borderColor: [Color(0xff9e9e9e)],
                totalSwitches: 2,
                labels: ['HIGH', 'LOW'],
                customTextStyles: [
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ],
                radiusStyle: true,
                onToggle: (index) {},
              ),
              SizedBox(
                height: 20.0,
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
                text: 'Create',
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
