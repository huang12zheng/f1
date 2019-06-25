import 'package:f1/base_util/index.dart';

String loginRepositories=r'''
query ReadRepositories($args:UserWhereInput) 
{
  users(where:$args){
    _id
    userName
    mobile
    avatar
    address{
      city
      district
      street
    }
    birthdata
    identity{
      identityType
      identityNo
    }
    config{
      perference{
        Home
        WeekStart
        isLunar
        theme
        Sortrd
      }
    }
  }
}
''';

loginAPI(args) {
  // QueryOptions options = QueryOptions(
  //   document: loginRepositories,
  //   variables: {'args': args},
  // );
  return query(loginRepositories,args);
}