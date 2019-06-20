import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import '../store.dart';
Page<T,dynamic> pageConfiguration<T extends GlobalBaseState<T>>(Page<T,dynamic> page)
{
  Function updateConfig =(T pageState, GlobalState appState)=>
    pageState.userInfo == appState.userInfo ? pageState :
      ((pageState.clone())..userInfo = appState.userInfo);

  Function view = (middleware)=> middleware.add(safetyView<T>());
  Function adapter = (middleware)=> middleware.add(safetyAdapter<T>());
  return page
    ..connectExtraStore(store, updateConfig)
    ..updateMiddleware(view: view,adapter: adapter)
  ;
}