import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_pref_demo/pages/home_page/home_model.dart';

class HomeProvider extends ChangeNotifier {
  List<UserDetails> userDetails = [];
  List<UserDetails> oldUserDetails = [];

  Future<List<UserDetails>> getUserDetails() async {
    String url = 'https://jsonplaceholder.typicode.com/albums';
    print('Url --> $url');

    try {
      Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('Response --> ${userDetailsFromJson(response.body)[0].toJson()}');
        return userDetailsFromJson(response.body);
      } else {
        return null;
      }
    } catch (e) {
      print('catch error in Get UserDetails --> $e');
    }
  }
}
