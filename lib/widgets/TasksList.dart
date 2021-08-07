import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';

import 'TaskTile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({@required this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    if (widget.tasks == null || widget.tasks.length < 1) {
      return Center(child: Text('There is no tasks'));
    }
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallBack: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
