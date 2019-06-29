import 'package:common_utils/common_utils.dart';
import 'package:f1/pages/passport_page/signup_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import '../state.dart';

// -----------------------------------Login-------------------------------
Map<String, String> getQueryArg(Context<PassportState> ctx) {
  String access = ctx.state.login.accessController.text;
  String verify = ctx.state.login.verifyController.text;
  if (access == '') throw new Exception('please input account');
  if (verify == '') throw new Exception('please input verify info');
  Map<String,String> queryArg={};
  switchAccess(access, queryArg);
  switchVerify(verify, queryArg);
  return queryArg;
}

void switchAccess(String access, Map<String, String> map) {
  if (RegexUtil.isEmail(access)==true) {map['email']=access; return ;}
  if (RegexUtil.isMobileExact(access)==true) {map['mobile']=access; return;}
  { map['userName']=access; return ;}
}

void switchVerify(String verify, Map<String, String> map) {
  if (verify.length==6 && RegExp('[0-9]+').hasMatch(verify) ) { map['SMS']=verify; return ;}
  map['password']=verify; return;
}


// -----------------------------------Signup-------------------------------
switchExistPattern(SignupState state){
  String access = state.nameController.text;
  String password = state.passwordController.text;
  String mobile = state.mobileController.text;
  if (access == '') throw new Exception('please input account');
  if (password == '') throw new Exception('please input password info');
  if (mobile == '') throw new Exception('please input mobile');
  List<Map> arg=[
    {'userName': state.nameController.text,},
    {'mobile': state.mobileController.text,},
    {'email':  state.emailController.text,},
  ];
  return arg;
}

switchSignupPattern(SignupState state){
  Map<String,String> arg={
    'userName': state.nameController.text,
    'mobile': state.mobileController.text,
    'email':  state.emailController.text,
    'password': state.passwordController.text,
  };
  return arg;
}

bool passwordIsSame(Context<PassportState> ctx) => ctx.state.signup.passwordController.text!=ctx.state.signup.confirmPasswordController.text;