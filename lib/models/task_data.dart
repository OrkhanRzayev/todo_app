import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  final List _tasks = [
    Task(name: 'Learn More'),
    Task(name: 'Try Harder'),
    Task(name: 'Try Better'),
  ];

  List get tasks {
    return List.unmodifiable(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task)
  {
    _tasks.remove(task);
    notifyListeners();
  }
}
