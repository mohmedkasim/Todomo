import 'package:flutter/cupertino.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Delivery food')
  ];
  int countTasks() {
    return tasks.length;
  }
}
