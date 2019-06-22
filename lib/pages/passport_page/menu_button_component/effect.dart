import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MenuButtonState> buildEffect() {
  return combineEffects(<Object, Effect<MenuButtonState>>{
    MenuButtonAction.onChangeTheme: onChangeTheme,
  });
}

void onChangeTheme(Action action, Context<MenuButtonState> ctx) {
  ctx.dispatch(MenuButtonActionCreator.changeTheme(action.payload));
}
