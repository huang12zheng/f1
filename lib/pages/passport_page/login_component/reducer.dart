import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.toggleLoginObscure: toggleLoginObscure,
    },
  );
}

LoginState toggleLoginObscure(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState..obscureTextVerify=!newState.obscureTextVerify;
}
