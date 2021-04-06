import 'package:flutter/material.dart';
import 'package:myapp/Dashboard.dart';
import 'package:myapp/NavBar.dart';
import 'package:myapp/welcome/welcome.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:get/get.dart';

void main() {
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    home: Home(),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Home()),
      GetPage(
          name: '/login',
          page: () => Material(
                child: WelcomePage(
                  loginAction: () {},
                ),
              )),
      GetPage(
          name: '/home',
          page: () => Material(
                  child: Stack(
                children: [NavBar(), DashBoard()],
              )))
    ],
  ));
}

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Obx(
                () => Text(
                  'clickable ' + c.count.toString(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: TextButton(
                child: Text('click me'),
                onPressed: () {
                  c.increment();
                },
              ),
            ),
            Container(
              child: TextButton(
                child: Text('click me to move to login'),
                onPressed: () {
                  Get.toNamed('/login');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: isLoggedIn
              ? [NavBar(), DashBoard()]
              : [
                  WelcomePage(
                    loginAction: () {
                      setState(() {
                        isLoggedIn = true;
                      });
                    },
                  )
                ],
        ),
      ),
    );
  }
}
