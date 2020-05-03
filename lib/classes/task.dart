import 'package:flutter/material.dart';

class Task {
  List<Task> task;
  String note;
  DateTime timeToComplete;
  bool completed;
  String repeats;
  DateTime deadline;
  List<DateTime> reminders;
  String taskId;
  String title;

  Task({this.title, this.completed, this.taskId});
}
