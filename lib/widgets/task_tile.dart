import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) toggleCheckboxState;

  TaskTile(this.isChecked, this.taskTitle, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool?)
//       toggleCheckboxState; // Updated as per the latest version. Instead of initializing it as final Function, initialized it as void Function(bool?). Because the onChanged property of the Checkbox() widget accepts 'void Function(bool?)' type function.
//
//   TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.redAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
