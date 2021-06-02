import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTasksScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.redAccent,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.redAccent,
                ),
              ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
