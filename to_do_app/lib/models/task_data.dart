import 'package:flutter/foundation.dart';
import 'package:to_do_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task>? get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle, int priority) {
    final task = Task(taskName: taskTitle, priority: priority);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void sortList() {
    _tasks.sort((a, b) => a.priority.compareTo(b.priority));
    notifyListeners();
  }
}
