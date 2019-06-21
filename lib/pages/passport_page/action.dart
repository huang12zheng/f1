import 'package:f1/pages/passport_page/state.dart';
import 'package:fish_redux/fish_redux.dart';


enum PassportAction { 
  changeToLoginTheme, changeToSignupTheme,
  selectNew, selectExisting,
  select,
}

class PassportActionCreator {
  static Action changeToLoginTheme() {
    return const Action(PassportAction.changeToLoginTheme);
  }
  static Action changeToSignupTheme() {
    return const Action(PassportAction.changeToSignupTheme);
  }
  static Action select(PassportState state) {
    return Action(PassportAction.select,payload: state);
  }
  
}
