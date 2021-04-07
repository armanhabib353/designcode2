import 'package:flutter/material.dart';
import 'package:learning/constants.dart';
import 'package:learning/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kSidebarBackgroundColor,
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -75, 0),
                      child: Image.asset(
                          'asset/illustrations/illustration-14.png'),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -170, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "App Development\nProfessional and\ngood Design",
                            textAlign: TextAlign.center,
                            style:
                                kLargeTitleStyle.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Complete App development\nwith best design\nand software System",
                            textAlign: TextAlign.center,
                            style: kHeadlineLabelStyle.copyWith(
                                color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  transform: Matrix4.translationValues(0, -150, 0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 53),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Log in to",
                          style: kTitle1Style,
                        ),
                        Text(
                          "Start Learning",
                          style: kTitle1Style.apply(color: Color(0xFF2196F3)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 130,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kShadowColor,
                                        offset: Offset(0, 12),
                                        blurRadius: 16),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5,
                                        right: 16,
                                        left: 16,
                                      ),
                                      child: TextField(
                                        cursorColor: kPrimaryLabelColor,
                                        decoration: InputDecoration(
                                          icon: Icon(
                                            Icons.email,
                                            color: Colors.blue,
                                            size: 20,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Email Address",
                                          hintStyle: kLoginInputTextStyle,
                                        ),
                                        style: kLoginInputTextStyle.copyWith(
                                            color: Colors.black),
                                        onChanged: (textEntered) {
                                          email = textEntered;
                                        },
                                      ),
                                    ),
                                    Divider(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 5,
                                        right: 16,
                                        left: 16,
                                      ),
                                      child: TextField(
                                        obscureText: true,
                                        cursorColor: kPrimaryLabelColor,
                                        decoration: InputDecoration(
                                          icon: Icon(
                                            Icons.lock,
                                            color: Colors.blue,
                                            size: 20,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Password",
                                          hintStyle: kLoginInputTextStyle,
                                        ),
                                        style: kLoginInputTextStyle.copyWith(
                                            color: Colors.black),
                                        onChanged: (textEntered) {
                                          pass = textEntered;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 47.0,
                                width: MediaQuery.of(context).size.width * 0.3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF0021EC),
                                      Color(0xFF5F74F1)
                                    ])),
                                child: Text("Login",
                                    style: kCalloutLabelStyle.copyWith(
                                        color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Text(
                            "Forgot Password?",
                            style: kCalloutLabelStyle.copyWith(
                                color: Color(0xFF405D74)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
