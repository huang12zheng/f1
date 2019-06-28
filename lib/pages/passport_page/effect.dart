import 'package:common_utils/common_utils.dart';
import 'package:f1/base_util/graphql/client.dart';
import 'package:f1/graphql/api.dart';
import 'package:f1/pages/passport_page/login_component/action.dart';
import 'package:f1/pages/passport_page/menu_button_component/action.dart';
import 'package:f1/pages/passport_page/service/index.dart';
import 'package:f1/pages/passport_page/signup_component/action.dart';
import 'package:f1/pages/passport_page/signup_component/state.dart';
import 'package:f1/widget/snack_bar.dart';
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
  /// animateToPage
  await newState.pageController.animateToPage(action.payload,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  /// change state and  viewShow
  ctx.dispatch(PassportActionCreator.select(newState));
  ctx.dispatch(PassportActionCreator.changeMenuTheme(action.payload) );
}

void onLogin(Action action, Context<PassportState> ctx) async {
  try{
    var tmp = await loginAPI(getQueryArg(ctx));
    print(tmp);
  }
  catch (e) {
    // errorDialog(e.message, ctx.context);
    showInSnackBar(action.payload,e.message);
  }
  finally{}
}



void onCheck(Action action, Context<PassportState> ctx) async {
  if (passwordIsSame(ctx)){
    // TODO
    print('ps is not true');
    return;
  }
  // gClient.cache.reset();
  if (await isExistUser(ctx)) { print("it isn't null");}
  else ctx.dispatch(SignupActionCreator.onSignup());
}

Future<bool> isExistUser(ctx) async {
  getUser(Context<PassportState> ctx) => switchExist(ctx.state.signup);
  var response = await signupCheckAPI(getUser(ctx));
  return response != []; // isExist
}




void onSignup(Action action, Context<PassportState> ctx) async {
  Map arg = switchSignup(ctx.state.signup);
  var response = await signupAPI(arg);
  // if 
}

