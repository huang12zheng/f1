import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SignupComponent extends Component<SignupState> {
  SignupComponent()
      : super(
            // effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            // dependencies: Dependencies<SignupState>(
            //     adapter: null,
            //     slots: <String, Dependent<SignupState>>{
            //     }),
        );

}
