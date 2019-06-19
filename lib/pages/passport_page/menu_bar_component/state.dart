import 'package:fish_redux/fish_redux.dart';
import '../menu_button_component/state.dart';
class MenuBarState implements Cloneable<MenuBarState> {
  MenuButtonState left;
  MenuButtonState right;
  @override
  MenuBarState clone() {
    return MenuBarState()
      ..left = left
      ..right=right;
  }
}

class LeftConnector extends ConnOp<MenuBarState,MenuButtonState>{
  @override
  get(MenuBarState state){
    return state.left;
  }
  // set()
}

class RightConnector extends ConnOp<MenuBarState,MenuButtonState>{
  @override
  get(MenuBarState state){
    return state.right;
  }
}