import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SignupState> buildEffect() {
  return combineEffects(<Object, Effect<SignupState>>{
    // SignupAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SignupState> ctx) {
}
