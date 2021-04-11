import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var isLogedIn = false.obs;
  var token = ''.obs;

  @override
  onInit() async {
    super.onInit();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', 'qwertyuiop');
    token.value = prefs.getString('token');
    print(token.value);
    if (token.value != '' && token.value != null) {
      isLogedIn.value = true;
      print('isLogedIn value ==>' + isLogedIn.value.toString());
    }
  }

  void updateLogedIn() {}
}
