import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import '../menu_button_component/state.dart';
class MenuBarState implements Cloneable<MenuBarState> {
  MenuButtonState left;
  MenuButtonState right;
  PageController pageController;
  @override
  MenuBarState clone() {
    return MenuBarState()
      ..left = left
      ..right=right
      ..pageController=pageController;
  }
}

class LeftConnector extends ConnOp<MenuBarState,MenuButtonState>{
  @override
  get(MenuBarState state){
    return state.left;
  }
  @override
  set(MenuBarState state,MenuButtonState subState){
    state.left=subState;
  }
}

class RightConnector extends ConnOp<MenuBarState,MenuButtonState>{
  @override
  get(MenuBarState state){
    return state.right;
  }
  @override
  set(MenuBarState state,MenuButtonState subState){
    state.right=subState;
  }
}