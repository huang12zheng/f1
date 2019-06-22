import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<MenuButtonState> buildReducer() {
  return asReducer(
    <Object, Reducer<MenuButtonState>>{
      MenuButtonAction.changeTheme: changeTheme,
    },
  );
}

MenuButtonState changeTheme(MenuButtonState state, Action action) {
  final MenuButtonState newState = state.clone();
  newState.color=state.uniqueId==action.payload?Colors.black:Colors.white;
  return newState;
}
