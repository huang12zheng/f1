import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MenuButtonState state, Dispatch dispatch, ViewService viewService) {
  return FlatButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      /// To Work By Parent 
      onPressed: ()=>dispatch(MenuButtonActionCreator.onSelect(state.uniqueId)),
      // _onSignInButtonPress,
      child: Text(
        state.title,
        style: TextStyle(
            color: state.color,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
  );
}
