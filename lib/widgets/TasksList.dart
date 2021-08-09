import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';

import 'TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget child) {
        if (taskData.tasks == null || taskData.countTasks() < 1) {
          return Center(child: Text('There is no tasks'));
        }
        return ListView.builder(
          itemCount: taskData.countTasks(),
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallBack: (bool checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
