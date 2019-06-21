import 'package:f1/global/state.dart';
import 'package:f1/pages/passport_page/login_component/state.dart';
import 'package:f1/pages/passport_page/menu_bar_component/state.dart';
import 'package:f1/pages/passport_page/menu_button_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class PassportState implements GlobalBaseState<PassportState> {

  String access;
  String verify;

  PageController pageController;  
  MenuButtonState left;
  MenuButtonState right;

  UserInfoState userInfo;

  @override
  PassportState clone() {
    return PassportState()
      ..access=access
      ..verify=verify
      ..left=left.clone()
      ..right=right.clone()
      ..pageController=pageController
      ..userInfo=userInfo
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

class LoginConnector extends ConnOp<PassportState,LoginState> {
  @override
  LoginState get(PassportState state) {
    // TODO: implement get
    return LoginState();
    // return ;
  }
  @override
  void set(PassportState state,LoginState subState){
    state.access=subState.accessController.text;
    state.verify=subState.verifyController.text;
  }
}
