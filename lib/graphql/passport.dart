import 'package:f1/base_util/graphql/client.dart';
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

signupCheckAPI(List<Map> args) async{
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
  gClient.cache.reset();
  var data = await query(checkRepositories,argT);
  if (data.toString() != '[]') 
  {
    print(data);
    print(argT);
    throw new Exception('Account Had Exist');
  }
}


signupAPI(args) async {
  String signupRepositories=r'''
mutation signUp($args:UserCreateInput!){
  createUser(data: $args){ id }
}
''';
  try {
    var data = await mutation(signupRepositories,args);
    print(data);
    return data;
  } catch (e) {
    print(e.message);
    throw new Exception("Couldn't Create User");
  }

}

