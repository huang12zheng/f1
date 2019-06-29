

import 'package:graphql_flutter/graphql_flutter.dart';

DataIdFromObject compositData([ List<String> keys= DEFAULT_KEYS,  String seperator = DEFAULT_SEPERATOR ]) {
  return (Object object) {
    if (objectIsCanComposit(object, keys)) return datasToString(keys, object as Map<String, Object>, seperator);
    return null;
  };
}


bool containsAllKeys(Map<String, Object> map, List<String> keys) =>
  keys.where((String s) => !map.containsKey(s)).isEmpty;

const List<String> DEFAULT_KEYS = [ '__typename', 'id' ];
const String DEFAULT_SEPERATOR = '/';

String datasToString(List<String> keys, Map<String, Object> object, String seperator) => keys.map((String key) => object[key].toString()).join(seperator);

bool objectIsCanComposit(Object object, List<String> keys) {
  return object is Map<String, Object> &&
      containsAllKeys(object, keys);
}