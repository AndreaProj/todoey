import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/tasks.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Tasks(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
