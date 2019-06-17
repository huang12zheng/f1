import 'package:f1/global/action.dart';
import 'package:f1/global/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

Reducer<GlobalState> buildReducer() {
  return asReducer(
    <Object, Reducer<GlobalState>>{
      GlobalAction.ChangeThemeColor: _onChangeThemeColor,
      GlobalAction.RandomThemeColor: _onRandomThemeColor
    }
  );
}
List<Color> _colors = <Color>[
  Colors.green,
  Colors.red,
  Colors.black,
  Colors.blue
];

GlobalState _onChangeThemeColor(GlobalState state, Action action) {
  return state.clone()..themeColor = action.payload;
}

GlobalState _onRandomThemeColor(GlobalState state, Action action) {
  Color nextColor(GlobalState state) => _colors[((_colors.indexOf(state.themeColor) + 1) % _colors.length)];
  return state.clone()..themeColor = nextColor(state);
}
