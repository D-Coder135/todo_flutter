import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
            // color: Colors.white,
            ),
      ),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      onChanged: null,
    );
  }
}
