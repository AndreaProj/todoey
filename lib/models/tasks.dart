import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'bohh')];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String text) {
    _tasks.add(Task(name: text));
    notifyListeners();
  }

  void changeCheckbox(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
