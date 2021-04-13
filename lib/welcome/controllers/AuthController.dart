import 'package:get/get.dart';
import 'package:myapp/welcome/provider/AuthProvider.dart';

class AuthController extends GetxController {
  var isLogedIn = false.obs;
  var token = ''.obs;
  final AuthProvider authProvider;

  AuthController({this.authProvider});
  @override
  onInit() async {
    super.onInit();
    ever(isLogedIn, (_) {
      isLogedIn.value ? Get.toNamed('/home') : Get.toNamed('/login');
      print('once execution');
    });

    var loginRes = await authProvider.getAccount();
    // loginRes.then((value) => print(value.user));
    print(loginRes);
    if (loginRes != null) {
      isLogedIn.value = true;
      print('isLogedIn value ==>' + isLogedIn.value.toString());
    }
  }

  updateLogedIn() {}
}
