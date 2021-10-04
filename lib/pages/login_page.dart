import 'package:flutter/material.dart';
import 'package:shared_pref_demo/common/shared_preferences.dart';
import 'package:shared_pref_demo/pages/home_page/home.dart';

class LogInPage extends StatefulWidget {
  @override
  LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {
  TextEditingController email = TextEditingController(text: 'l');
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('Current Screen --> $runtimeType');
    return Scaffold(
      body: ListView(
        children: [
          TextFormField(controller: email),
          TextFormField(controller: password),
          ElevatedButton(
            onPressed: () async {
              if (email.text.length >= 1) {
                await setPrefStringValue(user_email, email.text);
                await setPrefBoolValue(is_logIn, true);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }
            },
            child: Text('LogIn'),
          ),
        ],
      ),
    );
  }
}
