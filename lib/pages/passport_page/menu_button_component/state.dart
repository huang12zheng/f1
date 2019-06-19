import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class MenuButtonState implements Cloneable<MenuButtonState> {
  String uniqueId;
  Color color;
  String title;

  MenuButtonState({this.uniqueId, this.title, this.color}) {
    uniqueId ??= DateTime.now().toIso8601String();
  }

  @override
  MenuButtonState clone() {
    return MenuButtonState()
      ..uniqueId=uniqueId
      ..color=color
      ..title=title;
  }
  @override
  String toString() {
    return 'MenuButtonState{uniqueId: $uniqueId, title: $title}';
  }
}