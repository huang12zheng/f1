import 'package:f1/pages/passport_page/menu_button_component/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Effect<PassportState> buildEffect() {
  return combineEffects(<Object, Effect<PassportState>>{
    MenuButtonAction.onSelect: _onSelectButton,
  });
}

void _onSelectButton(Action action, Context<PassportState> ctx) async {
  final PassportState newState = ctx.state.clone();
  // payload is id
  // Future
  await newState.pageController.animateToPage(action.payload,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  ctx.dispatch(PassportActionCreator.select(newState));
}