import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SignupState> buildReducer() {
  return asReducer(
    <Object, Reducer<SignupState>>{
      SignupAction.toggleSignup: toggleSignup,
      SignupAction.toggleConfirm: toggleConfirm,
    },
  );
}

SignupState toggleSignup(SignupState state, Action action) {
  final SignupState newState = state.clone();
  print(newState.signupFlag);
  return newState..signupFlag=!newState.signupFlag;
}

SignupState toggleConfirm(SignupState state, Action action) {
  final SignupState newState = state.clone();
  print(newState.signupFlag);
  return newState..confirmFlag=!newState.confirmFlag;
}
