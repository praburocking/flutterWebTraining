import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';
import 'package:splashscreen/splashscreen.dart';

class CustomSplashScreen extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<CustomSplashScreen> {
  Future<Widget> loadFromFuture() async {
    // <fetch data from server. ex. login>
    AuthController authController = Get.find();
    bool isLogedIn = await authController.checkIsLoggedIn();
    print("isLoginedIn ==> " + isLogedIn.toString());
    return isLogedIn ? Get.offNamed('/home') : Get.offNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        navigateAfterFuture: loadFromFuture(),
        title: new Text(
          'Welcome In SplashScreen',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
}

// class AfterSplash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//           title: new Text("Welcome In SplashScreen Package"),
//           automaticallyImplyLeading: false),
//       body: new Center(
//         child: new Text(
//           "Done!",
//           style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
//         ),
//       ),
//     );
//   }
// }
