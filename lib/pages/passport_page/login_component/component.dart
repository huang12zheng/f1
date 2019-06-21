import 'package:fish_redux/fish_redux.dart';

// import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LoginComponent extends Component<LoginState> {
  LoginComponent()
      : super(
            view: buildView,
            reducer: buildReducer(),
        );

}
