import 'package:flutter/material.dart';

class NavigationState extends ChangeNotifier {
  NavigationState(this._taskId, [this._newTask = false]);
  String? _taskId;
  bool _newTask;

  String? get taskId => _taskId;
  set taskId(String? val) {
    _taskId = val;
    notifyListeners();
  }

  bool get newTask => _newTask;
  set newTask(bool val) {
    _newTask = val;
    notifyListeners();
  }
}
