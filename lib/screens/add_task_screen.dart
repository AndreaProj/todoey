import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTask;
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) => newTask = value,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {
              Provider.of<Tasks>(context, listen: false).addTask(newTask);
              Navigator.pop(context);
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            ),
            child: const Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
