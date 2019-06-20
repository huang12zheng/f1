import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<PassportState> buildReducer() {
  return asReducer(
    <Object, Reducer<PassportState>>{
      PassportAction.selectLogin:  _selectLogin,
      PassportAction.selectSignUp: _selectSignUp,
      PassportAction.select: _selectMenuButton,
    },
  );
}

PassportState _selectLogin(PassportState state, Action action) {
  final PassportState newState = state.clone();
  return newState
    ..left.color =Colors.black
    ..right.color=Colors.white
    ;
}

PassportState _selectSignUp(PassportState state, Action action) {
  final PassportState newState = state.clone();
  return newState
    ..right.color=Colors.black
    ..left.color =Colors.white
    ;
}

PassportState _selectMenuButton(PassportState state, Action action) {
  return action.payload;
}