import 'package:get/get.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';

class AuthController extends GetxController {
  var isLogedIn = false.obs;
  bool isLoggedIn() {
    return true;
  }

  void updateLogedIn() {}
}
