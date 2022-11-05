import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function()? longPressCallback;

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
      taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),),
      trailing: Checkbox(
        onChanged: (newValue){
          checkboxCallback(newValue);
        },
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}




