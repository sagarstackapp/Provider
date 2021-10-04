import 'package:shared_pref_demo/pages/home_page/home.dart';
import 'package:shared_pref_demo/pages/home_page/home_model.dart';
import 'package:shared_pref_demo/pages/home_page/home_rest_api.dart';

class HomePageViewModel {
  HomeState homeState;

  HomePageViewModel(this.homeState);

  Future getUserDetails(HomeProvider homeProvider) async {
    await Future.delayed(Duration(seconds: 1));
    homeProvider.oldUserDetails = homeState.homeProvider.oldUserDetails;
    if (homeProvider.oldUserDetails.length == 0) {
      userDetailsApi(homeProvider);
    } else {
      homeProvider.userDetails.addAll(homeProvider.oldUserDetails);
      homeProvider.notifyListeners();
    }
  }

  Future userDetailsApi(HomeProvider homeProvider) async {
    List<UserDetails> userDetails = await homeProvider.getUserDetails();
    if (userDetails != null) {
      homeProvider.userDetails.addAll(userDetails);
      if (homeProvider.oldUserDetails.length == 0) {
        homeProvider.oldUserDetails = homeProvider.userDetails;
        homeState.homeProvider.oldUserDetails = homeProvider.userDetails;
      }
    }
    homeProvider.notifyListeners();
  }
}
