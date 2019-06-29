import 'package:graphql_util/graphql_util.dart';
import 'client.dart';

query(String document,dynamic args){
  return graphqlWrapper(gClient.query(
    QueryOptions(
      document: document,
      variables: {'args': args},
    )
  ));
}

mutation(String document,dynamic args){
  return graphqlWrapper(
    gClient.mutate(
      MutationOptions(
        document: document,
        variables: {'args': args}
      )
    )
  );
}

graphqlWrapper(Future<QueryResult> request)async{
  QueryResult result = await request;
  if (result.errors != null) throw new Exception(result.errors[0].message);
  if (result.data.data.toString().contains('@cache/reference')){
    // print(gClient.cache.read("5cebeafb8c5eb80009ada7ed"));
    // Map
    // List
    if (result.data.values.last is List) return result.data.values.last.map( (data) => data.data ).toList();
    if (result.data.values.last.data is Map) return result.data.values.last.data;
  }
  //!! would no run by runtimeType == LazyCacheMap
  // result.data.data is Map. It maybe need value;
  return (result.data.data as Map).values.first;
}

// option(String document,dynamic args){
//   return QueryOptions(
//       document: document,
//       variables: {'args': args},
//     );
// }