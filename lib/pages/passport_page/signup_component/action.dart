import 'package:fish_redux/fish_redux.dart';

enum SignupAction {
  toggleSignup,toggleConfirm,
  onSignup,
  onCheck
}
class SignupActionCreator {
  static Action toggleSignup() {
    return const Action(SignupAction.toggleSignup);
  }

  static Action toggleConfirm() {
    return const Action(SignupAction.toggleConfirm);
  }

  static Action onSignup(){
    return const Action(SignupAction.onSignup);
  }
  static Action onCheck(){
    return const Action(SignupAction.onCheck);
  }
}
