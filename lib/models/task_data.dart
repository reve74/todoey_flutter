import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{
  List<Task>? _tasks = [
    Task(name: 'Buy milk zzz'),
    Task(name: 'Buy eggs zzz'),
    Task(name: 'Buy bread zzz'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks!);
  }

  void addData(text) {
    _tasks?.add(Task(name: text));
    notifyListeners();
  }
  int get taskCount {
    return _tasks!.length;
  }

  void addTask(String newTaskTitle) {

    final task = Task(name: newTaskTitle);
    _tasks!.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks!.remove(task);
    notifyListeners();
  }
// 컨트럴 + 쉬프트 + F
}