import 'package:f1/base_util/index.dart';

loginAPI(args) async {
  String loginRepositories=r'''
query ReadRepositories($args:UserWhereInput) 
{
  users(where:$args){
    id
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
  var data = await query(loginRepositories,args);
  if (data.toString() == '[]') throw new Exception('Signin is no vaild');
  return data;
}

signupCheckAPI(List<Map> args){
  String checkRepositories=r'''
query ReadRepositories($args:UserWhereInput) 
{
  userORQuery(where:$args){
    id
  }
}
''';
/// {"args": {"OR": [{"userName": "HZ"},{"mobile": "17682318150"}]}}
  var argT = {"OR":args};
  return query(checkRepositories,argT);
}


signupAPI(args) {
  String signupRepositories=r'''
mutation signUp($arg:UserCreateInput!){
  createUser(data: $arg){ id }
}
''';
  return mutation(signupRepositories,args);
}

