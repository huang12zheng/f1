import 'package:graphql_util/graphql_util.dart';

import 'GraphqlNormalization.dart';
import 'link_for.dart';

final String graphqlEndpoint = 'http://$host:4000';
final String subscritionEnpoint = '';
const String TOKEN = "";

/// StartWork
ClientUtil client = ClientBuild()
            .setLink(linkFor())
            .setNormalization(compositData(['_id']))
            // .setNormalization(getNormalizationByIdName("_id"))
            .build();

GraphQLClient gClient = client.value;

Link linkFor() {
  return tokenHandle();
}