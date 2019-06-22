import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<PassportState> buildReducer() {
  return asReducer(
    <Object, Reducer<PassportState>>{
      PassportAction.changeToLoginTheme:  _changeToLoginTheme,
      PassportAction.changeToSignupTheme: _changeToSignupTheme,
      PassportAction.select: _selectMenuButton,
      PassportAction.changeMenuTheme: changeMenuTheme,
    },
  );
}

PassportState _changeToLoginTheme(PassportState state, Action action) {
  final PassportState newState = state.clone();
  return newState
    ..left.color =Colors.black
    ..right.color=Colors.white
    ;
}

PassportState _changeToSignupTheme(PassportState state, Action action) {
  final PassportState newState = state.clone();
  return newState
    ..right.color=Colors.black
    ..left.color =Colors.white
    ;
}

PassportState _selectMenuButton(PassportState state, Action action) {
  return action.payload;
}
PassportState changeMenuTheme(PassportState state, Action action) {
  final PassportState newState = state.clone();
  var left = newState.left.clone();
  var right= newState.right.clone();
  if (action.payload==0) {left.color=Colors.black; right.color=Colors.white; }
  if (action.payload==1) {left.color=Colors.white; right.color=Colors.black; }
  return newState..left=left..right=right;
}