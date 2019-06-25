import 'package:f1/pages/passport_page/login_component/component.dart';
import 'package:f1/pages/passport_page/menu_bar_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'signup_component/component.dart';
import 'state.dart';
import 'view.dart';

class PassportPage extends Page<PassportState, Map<String, dynamic>> {
  PassportPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PassportState>(
                adapter: null,
                slots: <String, Dependent<PassportState>>{
                  'menu': MenuBarConnector()+MenuBarComponent(),
                  'login': LoginConnector()+LoginComponent(),
                  'signup': SignupConnector()+SignupComponent(),
                }),
            middleware: <Middleware<PassportState>>[
              // logMiddleware(tag: 'PassportState',monitor: (value)=>value.toString()),
            ],
            // wrapper:keepAliveWrapper
            );

}
