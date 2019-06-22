import 'package:f1/global/state.dart';
import 'package:f1/pages/passport_page/login_component/state.dart';
import 'package:f1/pages/passport_page/menu_bar_component/state.dart';
import 'package:f1/pages/passport_page/menu_button_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'signup_component/state.dart';

class PassportState implements GlobalBaseState<PassportState> {

  LoginState login;
  SignupState signup;

  PageController pageController;  
  MenuButtonState left;
  MenuButtonState right;

  UserInfoState userInfo;

  @override
  PassportState clone() {
    return PassportState()
      ..login=login
      ..signup=signup
      ..left=left
      ..right=right
      ..pageController=pageController
      ..userInfo=userInfo
    ;
  }

  @override
  String toString() {
    return "hase:${this.hashCode} page:${pageController.hasClients?pageController.page:pageController}  ${left.toString()}   ${right.toString()}";
  }
}

PassportState initState(Map<String, dynamic> args) {
  MenuButtonState left = MenuButtonState()..title='Existing'..color=Colors.black..uniqueId=0;
  MenuButtonState right = MenuButtonState()..title='New'..color=Colors.white..uniqueId=1;
  return PassportState()
    ..left=left
    ..right=right
    ..pageController=PageController()
    ..login=LoginState()
    ..signup=SignupState()
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
  void set(PassportState state,MenuBarState subState){
    state..left=subState.left
        ..right=subState.right;
  }
}

class LoginConnector extends ConnOp<PassportState,LoginState> {
  @override
  LoginState get(PassportState state) {
    return state.login;
  }
  @override
  void set(PassportState state,LoginState subState){
    state.login = subState;
  }
}
class SignupConnector extends ConnOp<PassportState,SignupState> {
  @override
  SignupState get(PassportState state) {
    return state.signup;
  }
  @override
  void set(PassportState state,SignupState subState){
    state.signup = subState;
  }
}
