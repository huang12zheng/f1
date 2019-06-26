import 'package:f1/base_util/index.dart';

loginAPI(args) {
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
  return query(loginRepositories,args);
}

signupCheckAPI(List<Map> args){
  String checkRepositories=r'''
query ReadRepositories($args:UserWhereInput) 
{
  userORQuery(where:$args){
    _id
  }
}
''';
/// {"args": {"OR": [{"userName": "HZ"},{"mobile": "17682318150"}]}}
  var argT = {"OR":args};
  return query(checkRepositories,argT);
}


signupAPI(args) {
  String signupRepositories=r'''
query CheckRepositories($args:UserWhereInput) 
{
  users(where:$args){
    _id
}
}
''';
  // return mutation(signupRepositories,args);
}

