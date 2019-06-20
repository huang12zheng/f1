import 'package:f1/pages/passport_page/state.dart';
import 'package:fish_redux/fish_redux.dart';


enum PassportAction { 
  selectLogin, selectSignUp,
  selectNew, selectExisting,
  select,
}

class PassportActionCreator {
  static Action selectLogin() {
    return const Action(PassportAction.selectLogin);
  }
  static Action selectSignUp() {
    return const Action(PassportAction.selectSignUp);
  }
  static Action select(PassportState state) {
    return Action(PassportAction.select,payload: state);
  }
  
}
