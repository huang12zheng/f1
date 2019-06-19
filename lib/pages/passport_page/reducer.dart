import 'package:f1/pages/passport_page/menu_button_component/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<PassportState> buildReducer() {
  return asReducer(
    <Object, Reducer<PassportState>>{
      // PassportAction.setLogin:  _setLogin,
      // PassportAction.setSignUp: _setSignUp,
      PassportAction.select: selectMenuButton,
    },
  );
}

// PassportState _setLogin(PassportState state, Action action) {
//   final PassportState newState = state.clone();
//   return newState
//     ..right=Colors.white
//     ..left =Colors.black;
// }

// PassportState _setSignUp(PassportState state, Action action) {
//   final PassportState newState = state.clone();
//   return newState
//     ..right=Colors.black
//     ..left =Colors.white;
// }

PassportState selectMenuButton(PassportState state, Action action) {
  final PassportState newState = state.clone();
  // payload is id
  // Future
  newState.pageController.animateToPage(action.payload,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  return newState;
}