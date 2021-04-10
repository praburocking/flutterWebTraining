import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:myapp/Constants.dart';
import 'package:myapp/welcome/models/LoginReq.dart';
import 'package:myapp/welcome/models/loginRes.dart';

class AuthProvider extends GetConnect {
  void onInit() {
    httpClient.defaultDecoder = (map) => LoginRes.fromJson(map);
    httpClient.baseUrl = Constants.URL_BASE + "/iam/";

    // It's will attach 'apikey' property on header from all requests
    // httpClient.addRequestModifier((request) {
    //   request.headers['apikey'] = '12345678';
    //   return request;
    // });

    // Even if the server sends data from the country "Brazil",
    // it will never be displayed to users, because you remove
    // that data from the response, even before the response is delivered
    httpClient.addResponseModifier<LoginRes>((request, response) {
      LoginRes model = response.body;
      if (model.authtoken != null) {
        model.authtoken = null;
      }
    });

    // httpClient.addAuthenticator((request) async {
    //   final response = await get("http://yourapi/token");
    //   final token = response.body['token'];
    //   // Set the header
    //   request.headers['Authorization'] = "$token";
    //   return request;
    // });

    //Autenticator will be called 3 times if HttpStatus is
    //HttpStatus.unauthorized
    // httpClient.maxAuthRetries = 3;
  }
}

Future<Response<LoginRes>> getAccount(String path) async =>
    await get('accounts');
Future<Response<LoginRes>> login(LoginReq data) async =>
    await post('login', data);
