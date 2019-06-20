import 'package:f1/pages/passport_page/menu_bar_component/state.dart';
import 'package:f1/pages/passport_page/menu_button_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class PassportState implements Cloneable<PassportState> {

  String access;
  String verify;

  PageController pageController;  
  MenuButtonState left;
  MenuButtonState right;

  @override
  PassportState clone() {
    return PassportState()
      ..access=access
      ..verify=verify
      ..left=left
      ..right=right
      ..pageController=pageController
    ;
  }
}

PassportState initState(Map<String, dynamic> args) {
  MenuButtonState left = MenuButtonState()..title='Existing'..color=Colors.black..uniqueId=0;
  MenuButtonState right = MenuButtonState()..title='New'..color=Colors.white..uniqueId=1;
  return PassportState()
    ..left=left
    ..right=right
    ..pageController=PageController()
  ;
}

class MenuBarConnector extends ConnOp<PassportState,MenuBarState> {
  @override
  MenuBarState get(PassportState state){
    return MenuBarState()
      ..left=state.left
      ..right=state.right
      ..pageController=state.pageController
      ;
  }
}
