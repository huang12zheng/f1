import 'package:common_utils/common_utils.dart';
import 'package:f1/graphql/api.dart';
import 'package:f1/pages/passport_page/login_component/action.dart';
import 'package:f1/pages/passport_page/menu_button_component/action.dart';
import 'package:f1/pages/passport_page/signup_component/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:graphql_util/graphql_util.dart';
import 'action.dart';
import 'state.dart';

Effect<PassportState> buildEffect() {
  return combineEffects(<Object, Effect<PassportState>>{
    MenuButtonAction.onSelect: onSelect,
    LoginAction.onLogin: onLogin,
    SignupAction.onSignup: onSignup,
  });
}

void onSelect(Action action, Context<PassportState> ctx) async {
  final PassportState newState = ctx.state.clone();
  await newState.pageController.animateToPage(action.payload,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  // print("warning: MenuButtonAction.onSelect has not been used.")
  ctx.dispatch(PassportActionCreator.select(newState));
  // ctx.dispatch(MenuButtonActionCreator.onChangeTheme(action.payload) );
  ctx.dispatch(PassportActionCreator.changeMenuTheme(action.payload) );
}

void onLogin(Action action, Context<PassportState> ctx) async {
  String access = ctx.state.login.accessController.text;
  String verify = ctx.state.login.verifyController.text;
  Map<String,String> queryArg={};
  switchAccess(access, queryArg);
  switchVerify(verify, queryArg);
  print(queryArg);
  
  var tmp = await loginAPI(queryArg);

  print(tmp);
  
}

void switchAccess(String access, Map<String, String> map) {
  if (RegexUtil.isEmail(access)==true) {map['email']=access; return ;}
  if (RegexUtil.isMobileExact(access)==true) {map['mobile']=access; return;}
  { map['userName']=access; return ;}
}

void switchVerify(String verify, Map<String, String> map) {
  if (verify.length==6 && RegExp('[0-9]+').hasMatch(verify) ) { map['SMS']=verify; return ;}
  map['password']=verify; return;
}

void onSignup(Action action, Context<PassportState> ctx) async {
}