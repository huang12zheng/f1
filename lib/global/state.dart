import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class GlobalState implements Cloneable<GlobalState> {
  // @override
  Color themeColor=Colors.blue;
  String home = 'todolist';
  String title = 'school';

  // @override
  GlobalState clone() {
    return GlobalState();
  }
}