import 'package:graphql_util/graphql_util.dart';

import 'graphql.dart';

option(String document,Map args){
  // if (args=={} || args == null) return a;
  return QueryOptions(
      document: document,
      variables: {'args': args},
    );
}

graphqlWrapper(Future<QueryResult> request)async{
  QueryResult result = await request;
  if (result.errors != null) return result.errors;
  if (result.data.runtimeType == LazyCacheMap){
    // print(gClient.cache.read("5cebeafb8c5eb80009ada7ed"));
    return result.data.values.last[0].data;
  }
  return result.data.data;
}
/// v1
// query(QueryOptions option){
//   return graphqlWrapper(gClient.query(option));
// }
query(String document,Map args){
  return graphqlWrapper(gClient.query(option(document,args)));
}
