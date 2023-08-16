class Task {
  late final String taskName;
  late int priority; //0 - low, 1 - high
  late bool isDone;

  Task({required this.taskName, this.priority = 1, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
