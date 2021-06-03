import 'package:flutter/material.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(widget.tasks[index].isDone, widget.tasks[index].name,
            (bool? checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        });
      },
      itemCount: widget.tasks.length,
    );
  }
}
