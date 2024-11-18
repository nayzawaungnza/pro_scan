import 'package:flutter/material.dart';
import 'package:pro_scan/components/pro_scan_button.dart';
import 'package:pro_scan/components/pro_scan_button_image.dart';
import 'package:pro_scan/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showText = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 0, iconTheme: IconThemeData(color: Colors.white)),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(children: [
                  Text(
                    'Hello there',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'lib/images/hand-wave.png',
                    width: 20,
                  )
                ]),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please enter your email and password to sign in.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Color(0xD04D4B4B),
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF516dff)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF516dff))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF516dff)))),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: showText,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          showText = !showText;
                          setState(() {
                            showText;
                          });
                        },
                        child: Icon(
                          showText ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF516dff),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xD04D4B4B),
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF516dff)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF516dff))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF516dff)))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        activeColor: Color(0xFF516dff),
                        side: BorderSide(color: Color(0xFF516dff)),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Color(0xFF516dff),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('or continue with',
                          style: TextStyle(
                              color: Color(0xD04D4B4B),
                              fontFamily: 'Roboto',
                              fontSize: 14)),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black38,
                    )),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    ProScanButtonImage(
                      imagePath: 'lib/images/google.png',
                      width: 30.0,
                      height: 30.0,
                      borderColor: Colors.grey.shade300,
                    ),
                    ProScanButtonImage(
                      imagePath: 'lib/images/apple.png',
                      width: 30.0,
                      height: 30.0,
                      borderColor: Colors.grey.shade300,
                    ),
                    ProScanButtonImage(
                      imagePath: 'lib/images/facebook.png',
                      width: 30.0,
                      height: 30.0,
                      borderColor: Colors.grey.shade300,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              left: 16,
              right: 16,
              child: ProScanButton(
                  text: 'Sign in',
                  color: Color(0xFF516dff),
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }))
        ],
      ),
    );
  }
}
