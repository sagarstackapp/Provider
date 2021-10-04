import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_pref_demo/pages/home_page/home_rest_api.dart';
import 'package:shared_pref_demo/pages/list_demo.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListDemo(),
    );
  }
}
