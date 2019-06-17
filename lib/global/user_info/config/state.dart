import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class ConfigState implements Cloneable<ConfigState> {
  Color themeColor = Colors.blue;
  String home = 'todolist';
  String title = 'school';

  @override
  ConfigState clone() {
    return ConfigState();
  }
}

ConfigState initState(Map<String, dynamic> args) {
  return ConfigState();
}
