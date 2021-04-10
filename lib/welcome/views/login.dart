import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utilWidgets/textForm.dart';
import 'package:get/get.dart';
import 'package:myapp/welcome/controllers/AuthController.dart';

class Login extends StatefulWidget {
  final Function loginAction;
  Login({this.loginAction});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    AuthController authCont = Get.find();
    return Positioned(
      left: isOpen
          ? MediaQuery.of(context).size.width * 0.60
          : MediaQuery.of(context).size.width - 200,
      width: isOpen ? MediaQuery.of(context).size.width * 0.40 : 200,
      height: MediaQuery.of(context).size.height,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: MediaQuery.of(context).size.height,
        width: isOpen ? MediaQuery.of(context).size.width * 0.40 : 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.amberAccent[100],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login to continue",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold, fontSize: 40)),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 500,
              child: Column(
                children: [
                  TextForm(
                    label: 'EMail',
                    validator: () {},
                    icon: Icon(
                      Icons.email_outlined,
                      color: Color(0xff235ad3),
                    ),
                    color: Color(0xff235ad3),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextForm(
                    label: 'Password',
                    validator: () {},
                    icon: Icon(
                      Icons.share_outlined,
                      color: Color(0xff235ad3),
                    ),
                    color: Color(0xff235ad3),
                    type: "password",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
                style: ButtonStyle(),
                onPressed: () {
                  authCont.updateLogedIn();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Login",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                )),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "doesn't have an account create one ",
                  style: GoogleFonts.quicksand(
                      fontSize: 20, fontWeight: FontWeight.w300),
                ),
                InkWell(
                  onTap: () {
                    Get.snackbar('test', 'indian');
                  },
                  child: Text(
                    'here',
                    style: GoogleFonts.quicksand(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
