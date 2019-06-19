import 'package:f1/pages/passport_page/menu_bar_component/state.dart';
import 'package:f1/pages/passport_page/menu_button_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class PassportState implements Cloneable<PassportState> {

  String access;
  String verify;

  PageController pageController;
  int pageCount=0;
  // Color left;
  // Color right;
  MenuButtonState left;
  MenuButtonState right;

  @override
  PassportState clone() {
    return PassportState()
      ..access=access
      ..verify=verify
    ;
  }
}

PassportState initState(Map<String, dynamic> args) {
  return PassportState();
}

class MenuBarConnector extends ConnOp<PassportState,MenuBarState> {
  @override
  MenuBarState get(PassportState state){
    return MenuBarState()
      ..left=state.left
      ..right=state.right;
  }
}
