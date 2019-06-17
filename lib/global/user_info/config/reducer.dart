import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<ConfigState> buildReducer() {
  return asReducer(
    <Object, Reducer<ConfigState>>{
      ConfigAction.ChangeThemeColor: _onChangeThemeColor,
      ConfigAction.RandomThemeColor: _onRandomThemeColor
    }
  );
}
List<Color> _colors = <Color>[
  Colors.green,
  Colors.red,
  Colors.black,
  Colors.blue
];

ConfigState _onChangeThemeColor(ConfigState state, Action action) {
  return state.clone()..themeColor = action.payload;
}

ConfigState _onRandomThemeColor(ConfigState state, Action action) {
  Color nextColor(ConfigState state) => _colors[((_colors.indexOf(state.themeColor) + 1) % _colors.length)];
  return state.clone()..themeColor = nextColor(state);
}
