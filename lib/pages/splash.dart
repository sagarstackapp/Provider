import 'package:flutter/material.dart';
import 'package:shared_pref_demo/common/shared_preferences.dart';
import 'package:shared_pref_demo/pages/home_page/home.dart';
import 'package:shared_pref_demo/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    checkLogIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Current Screen --> $runtimeType');
    return Scaffold(
      body: Container(),
    );
  }

  void checkLogIn() async {
    bool isLogin = await getPrefBoolValue(is_logIn);
    print('isLogin --> $isLogin');
    if (isLogin != null && isLogin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogInPage()));
    }
  }
}
