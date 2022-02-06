import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task>? tasks = [
    Task(name: 'Buy milk zzz'),
    Task(name: 'Buy eggs zzz'),
    Task(name: 'Buy bread zzz'),
  ];

  void addData(text) {
    tasks?.add(Task(name: text));
    notifyListeners();
  }
// 컨트럴 + 쉬프트 + F
}