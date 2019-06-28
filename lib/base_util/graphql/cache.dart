

import 'package:graphql_flutter/graphql_flutter.dart';

// replace with compositData(["id"])
// String objNormalization(Object node,String valueName) {
//   // node is valild and id is exist,then, can Swith to Tag
//   print(node);
//   if (node is Map<String, Object> &&
//       node.containsKey('__typename') &&
//       node.containsKey(valueName)) {
//     return "${node['__typename']}/${node[valueName]}";
//   }
//   return null;
// }


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