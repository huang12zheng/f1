import 'package:fish_redux/fish_redux.dart';

enum SignupAction { toggleSignup,toggleConfirm }

class SignupActionCreator {
  static Action toggleSignup() {
    return const Action(SignupAction.toggleSignup);
  }

  static Action toggleConfirm() {
    return const Action(SignupAction.toggleConfirm);
  }
}
