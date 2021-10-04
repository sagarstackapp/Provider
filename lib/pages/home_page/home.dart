import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_pref_demo/common/shared_preferences.dart';
import 'package:shared_pref_demo/pages/home_page/home_page_view_model.dart';
import 'package:shared_pref_demo/pages/home_page/home_rest_api.dart';
import 'package:shared_pref_demo/pages/login_page.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  HomePageViewModel homePageViewModel;
  HomeProvider homeProvider;

  @override
  Widget build(BuildContext context) {
    print('Current Screen --> $runtimeType');
    homeProvider = Provider.of<HomeProvider>(context, listen: false);

    homePageViewModel ?? (homePageViewModel = HomePageViewModel(this));
    return Scaffold(
      body: ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
        builder: (context, child) {
          return Consumer<HomeProvider>(
            builder: (context, value, child) {
              print('User List -->  ${value.userDetails.length}');
              if (value.userDetails.length == 0) {
                homePageViewModel.getUserDetails(value);
              }
              return Center(
                child: RefreshIndicator(
                  onRefresh: () async {
                    if (value.userDetails.length == 0) {
                      homePageViewModel.getUserDetails(value);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('No more data found')),
                      );
                    }
                  },
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      value.userDetails.length == 0
                          ? Container()
                          : ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: 1,
                              itemBuilder: (context, index) =>
                                  Text(value.userDetails[index].title),
                            ),
                      ElevatedButton(
                        onPressed: () async {
                          await removePrefValue(is_logIn);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInPage()));
                        },
                        child: Text('Logout'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Tip'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
