import 'package:app_transport/screens/home/home_screen.dart';
import 'package:app_transport/screens/login/login_screen.dart';
import 'package:app_transport/screens/profile/profile_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const initial = '/';
  static final routes = [
    GetPage(name: "/", page: () => HomeScreenWidget()),
    GetPage(name: "/login", page: () => LoginScreenWidget()),
    GetPage(name: "/profile", page: () => ProfileScreenWidget()),
  ];
}
