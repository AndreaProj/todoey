import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/tasks.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, task, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: task.tasks[index].name,
              isChecked: task.tasks[index].isDone,
              checkboxCallback: () {
                Provider.of<Tasks>(context, listen: false)
                    .changeCheckbox(index);
              },
              longPressCallback: () {
                Provider.of<Tasks>(context, listen: false)
                    .deleteTask(task.tasks[index]);
              },
            );
          },
          itemCount: task.tasks.length,
        );
      },
    );
  }
}
