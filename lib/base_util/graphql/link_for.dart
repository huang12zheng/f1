import 'package:graphql_util/graphql_util.dart';

import 'client.dart';

Link tokenHandle() {
  if (tokenIsEmpty()) return linkHandle();
  return getTokenLink();
}

Link linkHandle() {
  final Link httpLink = HttpLink( uri:  graphqlEndpoint) as Link;
  if (subscriptionIsExist()) return httpLink;
  return httpLink.concat(WebSocketLink(url: subscritionEnpoint));
}
bool subscriptionIsExist() => subscritionEnpoint=='' || subscritionEnpoint == null;

/// Link(Token) is Heavily dependent on user Settings
Link getTokenLink() {
  Link link=linkHandle();
  var _getToken = () async => TOKEN;
  final AuthLink authLink = AuthLink(getToken: _getToken);
  return authLink.concat(link);
}
bool tokenIsEmpty() => TOKEN=='' || TOKEN==null;