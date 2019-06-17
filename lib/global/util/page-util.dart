import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import '../store.dart';

Page<T,dynamic> pageConfiguration<T extends GlobalState>(Page<T,dynamic> page)
{
  // (Son,Parent)=> Parent.var
  // if (target.runtimeType == HomeState) {
  //   (target as HomeState).userInfo = source.userInfo;
  // }
  // return target;
  Function update =(T pageState, GlobalState appState)=>
    pageState.themeColor == appState.themeColor ? pageState :
      ((pageState.clone())..themeColor = appState.themeColor);
  // Function view = (List<ViewMiddleware<T>> middleware)=> middleware.add(safetyView<T>());

  Function view = (middleware)=> middleware.add(safetyView<T>());
  Function adapter = (middleware)=> middleware.add(safetyAdapter<T>());
  return page
    ..connectExtraStore(store, update)
    ..updateMiddleware(view: view,adapter: adapter)
  ;
}