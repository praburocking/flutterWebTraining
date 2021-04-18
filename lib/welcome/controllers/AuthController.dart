import 'package:get/get.dart';
import 'package:myapp/welcome/models/loginRes.dart';
import 'package:myapp/welcome/provider/AuthProvider.dart';

class AuthController extends GetxController {
  var isLogedIn = false.obs;
  var token = ''.obs;
  final AuthProvider authProvider;
  var loginRes = new LoginRes().obs;

  AuthController({this.authProvider});
  @override
  onInit() async {
    super.onInit();
    ever(isLogedIn, (_) {
      isLogedIn.value ? Get.toNamed('/home') : Get.toNamed('/login');
      print('once execution');
    });
    //rcheckIsLoggedIn();
  }

  Future<bool> checkIsLoggedIn() async {
    var value = await authProvider.getAccount();
    if (value != null) {
      loginRes.value = value;

      // loginRes.then((value) => print(value.user));
      print(loginRes);
      if (loginRes != null) {
        isLogedIn.value = true;
        print('isLogedIn value ==>' + isLogedIn.value.toString());
      }
    } else {
      isLogedIn.value = false;
    }
    return isLogedIn.value;
  }

  login(email, password) async {
    loginRes.value =
        await authProvider.login({"email": email, "password": password});
    print(loginRes.value);
  }

  updateLogedIn() {}
}
