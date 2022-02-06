import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  // final List<Task>? tasks;
  //
  // TasksList({this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks![index].name,
          isChecked: Provider.of<TaskData>(context).tasks![index].isDone,
          checkboxCallback: (bool? checkboxState) {
            // setState(() {
            //   if(checkboxState != null) {
            //     widget.tasks![index].toggleDone();
            //   }
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks!.length,
    );
  }
}
