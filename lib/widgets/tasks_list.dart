import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index].isDone, tasks[index].name,
            (bool? checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        });
      },
      itemCount: tasks.length,
    );
  }
}
