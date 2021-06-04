import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(Provider.of<TaskData>(context).tasks[index].isDone,
                Provider.of<TaskData>(context).tasks[index].name,
                (bool? checkboxState) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            });
          },
          itemCount: Provider.of<TaskData>(context).tasks.length,
        );
      },
    );
  }
}
