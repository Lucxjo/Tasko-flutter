class Task {
  List<Task> tasks;
  String note;
  DateTime completionTime;
  bool isComplete;
  String repeats;
  DateTime deadline;
  List<DateTime> reminders;
  String id;
  String title;

  Task(this.id, this.title, this.isComplete);
}