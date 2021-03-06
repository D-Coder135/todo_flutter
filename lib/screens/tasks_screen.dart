import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/tasks_list.dart';
import 'package:todo_flutter/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  // This method will return a widget which will be show inside the ModelBottomSheet() widget.
  Widget buildBottomSheet(BuildContext context) {
    return AddTasksScreen(); //(newTaskTitle) {
    //   // setState(() {
    //   //   tasks.add(Task(name: newTaskTitle));
    //   // });
    //   Navigator.pop(context);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.redAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 40.0,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
