import 'package:f1/pages/passport_page/menu_bar_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
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
                }),
            middleware: <Middleware<PassportState>>[
            ],);

}
