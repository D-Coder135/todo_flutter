import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];

  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index].isDone, tasks[index].name);
      },
      itemCount: tasks.length,
    );
  }
}
